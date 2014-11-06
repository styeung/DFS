class Game < ActiveRecord::Base
  validates :date, :home_team, :away_team, presence: true
  
  has_many(
    :player_games,
    class_name: "PlayerGame",
    foreign_key: :game_id,
    primary_key: :id
  )
  
  has_many :players, through: :player_games, source: :player
end
