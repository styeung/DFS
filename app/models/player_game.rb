class PlayerGame < ActiveRecord::Base
  validates :player_id, :game_id, presence: true
  
  belongs_to :player
  belongs_to :game
  
  def total_fantasy_points
    bonus = 0
    bonus += 1 if self.points >= 10
    bonus += 1 if self.rebounds >= 10
    bonus += 1 if self.assists >= 10
    bonus += 1 if self.steals >= 10
    bonus += 1 if self.blocks >= 10
    
    if bonus >= 3
      bonus = 4.5
    elsif bonus == 2
      bonus = 1.5
    else
      bonus = 0
    end
    
    points = self.points + 
             (self.three_fgm * 0.5 ) +
             (self.rebounds * 1.25) +
             (self.assists * 1.5) +
             (self.steals * 2) +
             (self.blocks * 2) +
             (self.turnovers * -0.5) +
             bonus
             
  end
  
  
end
