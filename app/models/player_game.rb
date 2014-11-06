class PlayerGame < ActiveRecord::Base
  validates :player_id, :game_id, presence: true
  
  belongs_to :player
  belongs_to :game
  
  
end
