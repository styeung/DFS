require 'open-uri'

class Player < ActiveRecord::Base
  validates :name, :position, :team_id, presence: true
  
  belongs_to(
    :team,
    class_name: "Team",
    foreign_key: :team_id,
    primary_key: :id
  )
  
  has_many(
    :player_games,
    class_name: "PlayerGame",
    foreign_key: :player_id,
    primary_key: :id
  )
  
  def self.create_blacklist
    blacklist = {}
    
    page = Nokogiri::HTML(open("http://www.cbssports.com/nba/injuries/daily"))
    
    tables = page.css(".row1, .row2").each do |row|
      blacklist[(row.css("a")[0].text.strip)] = row.css("td")[5].children[0].text if row.css("a")[0]
    end
    
    blacklist
  end
  
  def point_history(games_back = nil)
    player_games = self.player_games
    player_games_length = player_games.length
    
    games_back = (player_games_length - 1) if games_back.nil?
    
    start_point = player_games_length - games_back - 1
    end_point = player_games_length - 1
    
    output = []
    
    if player_games.length > 0
      (start_point..end_point).each do |num|
        output << player_games[num].total_fantasy_points
      # player_games.each do |player_game|
      #   output << player_game.total_fantasy_points
      end
    
      return output.sort
    else
      return []
    end
  
  end
  
  def point_history_per_minute
    player_games = self.player_games
    output = []
    
    if player_games.length > 0
      player_games.each do |player_game|
        output << player_game.total_fantasy_points/player_game.minutes
      end
    
      return output.sort
    else
      return []
    end
  end
  
  def average_fantasy_points
    sum = 0

    @player_games = self.player_games
    
    if @player_games.length > 0
      @player_games.each do |player_game|
        sum += player_game.total_fantasy_points
      end
    
      return sum/@player_games.length
    else
      return 0
    end
  end
  
  def median_fantasy_points(games_back = nil)
    point_history = self.point_history(games_back)
    point_history_length = point_history.length
    
    return 0 if point_history_length < 1
    
    if point_history_length % 2 == 0
      median = ((point_history[point_history_length/2 - 1] + point_history[point_history_length/2])/2).round(2)
    else
      median = point_history[point_history_length/2].round(2)
    end
  end
  
  def total_minutes
    PlayerGame.where(player_id: self.id).sum("minutes")
  end
  
  def median_minutes(games_back = nil)    
    player_games = PlayerGame.select(:id, :game_id, :minutes).where(player_id: self.id)
    
    player_games.sort { |x, y| y.game.date <=> x.game.date }
    player_games_length = player_games.length
    
    games_back = player_games_length if games_back.nil?
    
    subset_player_games = player_games[0...games_back]
    
    subset_player_games.sort { |x, y| x.minutes <=> y.minutes }
    
    return 0 if player_games_length < 1
    
    if subset_player_games.length % 2 == 0
      median = ((subset_player_games[subset_player_games.length/2 - 1].minutes + subset_player_games[subset_player_games.length/2].minutes)/2).round(2)
    else
      median = subset_player_games[subset_player_games.length/2].minutes.round(2)
    end
  end
  
  def fantasy_points_per_minute
    point_history = self.point_history
    
    return 0 if point_history.length < 1
    
    total_points = self.point_history.inject { |sum, el| sum + el }
    
    points_per_minute = (total_points / self.total_minutes).round(2)
  end
  
  def expected_fantasy_points
    (self.fantasy_points_per_minute * self.median_minutes).round(2)
  end
  
  
end
