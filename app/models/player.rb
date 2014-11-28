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
  
  def point_history
    @player_games = self.player_games
    @output = []
    
    if @player_games.length > 0
      @player_games.each do |player_game|
        @output << player_game.total_fantasy_points
      end
    
      return @output.sort
    else
      return []
    end
  
  end
  
  def point_history_per_minute
    @player_games = self.player_games
    @output = []
    
    if @player_games.length > 0
      @player_games.each do |player_game|
        @output << player_game.total_fantasy_points/player_game.minutes
      end
    
      return @output.sort
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
  
  def median_fantasy_points
    point_history = self.point_history
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
  
  def median_minutes    
    player_games = PlayerGame.select("minutes").where(player_id: self.id).order("minutes")
    player_games_length = player_games.length
    
    return 0 if player_games_length < 1
    
    if player_games_length % 2 == 0
      median = ((player_games[player_games_length/2 - 1].minutes + player_games[player_games_length/2].minutes)/2).round(2)
    else
      median = player_games[player_games_length/2].minutes.round(2)
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
