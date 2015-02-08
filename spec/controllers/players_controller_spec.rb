require 'rails_helper'

RSpec.describe PlayersController, :type => [:controller, :feature] do
  describe 'GET show' do

    let(:test_team_1) do
      Team.create({
         name: 'FakeTeam1'
      })
    end

    let(:test_team_2) do
      Team.create({
         name: 'FakeTeam2'
      })
    end

    let(:test_player) do
      Player.create({
          name: 'Fake Player',
          position: 'PG',
          team_id: test_team_1.id
      })
    end


    let(:test_game) do
      Game.create({
        date: Date.parse("Thu Oct 30 2014"),
        away_team_id: test_team_2.id,
        home_team_id: test_team_1.id
      })
    end

    let(:test_player_game) do
      PlayerGame.create({
         game_id: test_game.id,
         player_id: test_player.id,
         points: 12,
         rebounds: 10,
         assists: 2,
         steals: 2,
         blocks: 2,
         turnovers: 2,
         minutes: 20,
         fga: 10,
         fgm: 6,
         fta: 0,
         ftm: 0,
         team_id: test_team_1
      })
    end

    after(:each) do
      test_player.delete
      test_team_1.delete
      test_team_2.delete
      test_game.delete
      test_player_game.delete
    end

    it "shows the player's name" do
      visit player_path(test_player)
      p player_path(test_player)
      p page.html
      expect(page).to have_content('hello')
    end
  end

end
