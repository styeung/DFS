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
    
    domain = "http://www.basketball-reference.com/"
    path = "teams/#{self.name}/2015.html"

    page = Nokogiri::HTML(open("#{ domain }/#{ path }"))

    roster_rows = page.css("roster")
    
    roster_rows.each do |row|
      player_name = row.css("td")[1].css("a").text
      player_position = row.css("td")[2].text
      
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
    all_player_ids = self.players.pluck(:id)
    
    self.games.each do |game|
      output << PlayerGame.where("game_id = ? AND player_id IN (?)", game.id, all_player_ids).sum(:points)
    end
    
    output
  end
  
  def get_fantasy_point_history
    output = []
    all_player_ids = self.players.pluck(:id)
    
    self.games.each do |game|
      temp = 0
      PlayerGame.where("game_id = ? AND player_id IN (?)", game.id, all_player_ids)
                .each { |player_game| temp += player_game.total_fantasy_points }
                          
      puts temp
      output << temp
    end
    
    output
  end
  
  def get_fantasy_point_for_game(game_id)
    points = 0
    all_player_ids = self.players.pluck(:id)
    
    PlayerGame.where("game_id = ? AND player_id IN (?)", game_id, all_player_ids)
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
  
end
