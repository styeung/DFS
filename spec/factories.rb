FactoryGirl.define do
  factory :player do
    name "Player PG"
    position "PG"
    team_id 1
  end

  factory :team do
    name "ATL"
  end

  factory :player_game do
    player_id 1
    game_id 1
  end

  factory :game do
    date Date.parse( 
  end
end
