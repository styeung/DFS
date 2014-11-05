class Team < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  
  has_many(
    :players,
    class_name: "Player",
    foreign_key: :team_id,
    primary_key: :id
  )
end
