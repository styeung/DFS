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
  
  def self.retrieve_starting_lineups
    starters = []
    
    page = Nokogiri::HTML(open("http://www.rotowire.com/basketball/nba_lineups.htm"))
    box_children = page.css(".dlineups-box").children
    excluded_classes = Set.new([
      "span15 dlineups-teamsnba",
      "span15 dlineups-inactivehead",
      "span15 dlineups-nbainactiveblock"
    ])
    
    box_children.each do |child|
      next if excluded_classes.include?(child["class"])
      
      child.css(".dlineups-vplayer a").each do |row|
        starters << row.text
      end
    end
    
    starters
  end
  
  def point_history(games_back = nil)
    player_games = self.player_games.sort { |x, y| x.game.date <=> y.game.date }
    player_games_length = player_games.length
    
    games_back = player_games_length if games_back.nil?
    
    start_point = player_games_length - games_back
    end_point = player_games_length - 1
    
    output = []
    
    if player_games.length > 0
      (start_point..end_point).each do |num|
        output << player_games[num].total_fantasy_points
      end
    
      return output.sort
    else
      return []
    end
  end
  
  def minute_history(games_back = nil)
    player_games = self.player_games.sort { |x, y| x.game.date <=> y.game.date }
    player_games_length = player_games.length
    
    games_back = player_games_length if games_back.nil?
    
    start_point = player_games_length - games_back
    end_point = player_games_length - 1
    
    output = []
    
    if player_games.length > 0
      (start_point..end_point).each do |num|
        output << player_games[num].minutes
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
    minute_history = self.minute_history(games_back)
    minute_history_length = minute_history.length
    
    return 0 if minute_history_length < 1
    
    if minute_history_length % 2 == 0
      median = ((minute_history[minute_history_length/2 - 1] + minute_history[minute_history_length/2])/2).round(2)
    else
      median = minute_history[minute_history_length/2].round(2)
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
