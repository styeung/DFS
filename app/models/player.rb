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
  
  def average_fantasy_points
    sum = 0
    @player_games = self.player_games
    
    if @player_games.length > 1
      @player_games.each do |player_game|
        sum += player_game.total_fantasy_points
      end
    
      return sum/@player_games.length
    else
      return 0
    end
  end
  
end
