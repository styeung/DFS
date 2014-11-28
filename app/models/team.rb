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
  
  def create_player_or_players(name = nil)
    # if name == nil, creates all players from the team
    # otherwise, creates specific player
    
    domain = "http://espn.go.com"
    path = "nba/team/roster/_/name"
    espn_name = self.espn_name
    full_name = self.full_name
    

    page = Nokogiri::HTML(open("#{ domain }/#{ path }/#{ espn_name }/#{ full_name.gsub(" ", "-") }"))

    roster_rows = page.css(".oddrow, .evenrow")
    
    roster_rows.each do |row|
      player_name = row.css("a").text
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
  
end
