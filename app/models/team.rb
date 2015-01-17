class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many(
    :players,
    class_name: "Player",
    foreign_key: :team_id,
    primary_key: :id
  )
  
  has_many(
    :home_games,
    class_name: "Game",
    foreign_key: :home_team_id,
    primary_key: :id
  )
  
  has_many(
    :away_games,
    class_name: "Game",
    foreign_key: :away_team_id,
    primary_key: :id
  )

  has_many(
    :player_games,
    class_name: "PlayerGame",
    foreign_key: :team_id,
    primary_key: :id 
  )

  def self.create_all_players
    self.all.each do |team|
      team.create_team_players
    end
  end
  
  def games
    (self.home_games + self.away_games).select {|game| game.date < Date.current}.sort {|x, y| x.date <=> y.date}
  end
  
  def create_player_or_players(name = nil)
    # if name == nil, creates all players from the team
    # otherwise, creates specific player
    positions = Set.new([
      "PG",
      "SG",
      "SF",
      "PF",
      "C"
    ])
    
    domain = "http://www.basketball-reference.com/"
    path = "teams/#{self.name}/2015.html"

    page = Nokogiri::HTML(open("#{ domain }#{ path }"))

    roster_rows = page.css("#roster tbody tr")
    
    roster_rows.each do |row|
      player_name = row.css("td")[1].css("a").text
      player_position = row.css("td")[2].text
      
      unless positions.include?(player_position)
        player_name_split = player_name.split(" ", 2)
        first_name = player_name_split[0].downcase
        last_name = player_name_split[1].downcase.gsub(" ", "")
        player_path = "players/#{last_name[0]}/#{last_name[0...5]}#{first_name[0...2]}01.html"
        player_page = Nokogiri::HTML(open("#{ domain }#{ player_path }"))
        
        player_rows = player_page.css("#totals tbody tr")
        
        player_rows.reverse.each do |player_row|
          player_position = player_row.css("td")[4].text
          
          break unless player_position.empty?
        end
      end
      
      if name.nil?
        Player.create({
          name: player_name,
          position: player_position,
          team_id: self.id
        })
      elsif name == player_name
        return Player.create({
          name: player_name,
          position: player_position,
          team_id: self.id
        })
      end
    end
    
  end
  
  def create_team_players
    create_player_or_players
  end
  
  def create_player_with_name(name)
    create_player_or_players(name)
  end
    
  def get_point_history
    output = []
    
    self.games.each do |game|
      output << PlayerGame.where("game_id = ? AND team_id = ?", game.id, self.id).sum(:points)
    end
    
    output
  end
  
  def get_fantasy_point_history
    output = []
    
    self.games.each do |game|
      temp = 0
      PlayerGame.where("game_id = ? AND team_id = ?", game.id, self.id)
                .each { |player_game| temp += player_game.total_fantasy_points }
                          
      puts temp
      output << temp
    end
    
    output
  end
  
  def get_fantasy_point_for_game(game_id)
    points = 0
    
    PlayerGame.where("game_id = ? AND team_id = ?", game_id, self.id)
              .each { |player_game| points += player_game.total_fantasy_points }
                        
    points
  end
  
  def get_point_to_fantasy_point_history
    output = []
    point_history = self.get_point_history
    fantasy_point_history = self.get_fantasy_point_history
    
    point_history.each_with_index do |el, index|
      output << el/fantasy_point_history[index] if el > 0
    end
    
    output
  end
  
  # def points_and_minutes_for_team(position = nil)
  #   if position.nil?
  #     all_player_ids = self.players.pluck(:id)
  #   else
  #     all_player_ids = Player.where(team_id: self.id, position: position).pluck(:id)
  #   end
  #
  #   fantasy_points = 0
  #   minutes = 0
  #
  #   self.games.each do |game|
  #     PlayerGame.where("game_id = ? AND player_id IN (?)", game.id, all_player_ids)
  #               .each do |player_game|
  #                 fantasy_points += player_game.total_fantasy_points
  #                 minutes += player_game.minutes
  #               end
  #   end
  #
  #   {
  #     points: fantasy_points,
  #     minutes: minutes
  #   }
  # end
  #
  # def points_per_minute_against_team(position = nil)
  #   all_player_ids = self.players.pluck(:id)
  #
  #   fantasy_points = 0
  #   minutes = 0
  #
  #   self.games.each do |game|
  #     PlayerGame.where("game_id = ? AND player_id NOT IN (?)", game.id, all_player_ids)
  #               .each do |player_game|
  #                 if position.nil? || player_game.player.position == position
  #                   fantasy_points += player_game.total_fantasy_points
  #                   minutes += player_game.minutes
  #                 end
  #               end
  #   end
  #
  #   {
  #     points: fantasy_points,
  #     minutes: minutes
  #   }
  # end
  
end
