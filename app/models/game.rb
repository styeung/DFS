class Game < ActiveRecord::Base
  validates :date, :home_team_id, :away_team_id, presence: true

  scope :previous_games, -> { where("date < ?", Date.current).order(:date) }
  scope :todays_games, -> { where(date: Date.parse(Time.now.to_s) ) }

  has_many(
    :player_games,
    class_name: "PlayerGame",
    foreign_key: :game_id,
    primary_key: :id
  )

  belongs_to(
    :home_team,
    class_name: "Team",
    foreign_key: :home_team_id,
    primary_key: :id
  )

  belongs_to(
    :away_team,
    class_name: "Team",
    foreign_key: :away_team_id,
    primary_key: :id
  )


  has_many :players, through: :player_games, source: :player
  
  def teams
    [self.home_team, self.away_team]
  end
  
  def self.get_todays_odds
    game_array = []
    
    page = Nokogiri::HTML(open("http://www.oddsshark.com/nba/odds"))
    rows = page.css(".odds-page-container")
    rows.each do |row|
      date = row.css(".header-time").text
      
      game_hash = Hash.new { |h,k| h[k] = Hash.new }
      line_break = row.css(".first.teams a").at_css("br")
      line_break.content = ","
      teams = row.css(".first.teams a").text.split(",")
      
      game_hash["date"] = date
      game_hash["first_team"]["name"] = teams[0].downcase!
      game_hash["second_team"]["name"] = teams[1].downcase!
      
      total = row.css(".book.total.book-4 span.total").text
      game_hash["total"] = total
      
      spreads = row.css(".book.spread.book-4 span.spread")
      game_hash["first_team"]["spread"] = spreads[0].text
      game_hash["second_team"]["spread"] = spreads[1].text
      
      game_array << game_hash
    end
    
    game_array
  end

  def create_player_games
    if self.player_games.empty?
      current_home_team = self.home_team
      current_away_team = self.away_team

      current_teams = [current_home_team, current_away_team]

      domain = "http://www.basketball-reference.com"
      path = "boxscores"
      game_detail = "#{ self.date.strftime('%Y%m%d') }0#{ current_home_team.name }"
      page = Nokogiri::HTML(open("#{ domain }/#{ path }/#{ game_detail }.html"))

      current_teams.each do |team|
        table = page.css("#div_#{ team.name }_basic tr")
        table.each_with_index do |row, index|
          name = row.css("a").text

          next if name.empty?
          next if row.css("td")[2].nil?
          
          minutes_array = row.css("td")[1].text.split(":")
          minutes = (minutes_array[0].to_i + minutes_array[1].to_i/60.0).round(2)
          
          fgm = row.css("td")[2].text.to_i
          fga = row.css("td")[3].text.to_i
          three_fgm = row.css("td")[5].text.to_i
          three_fga = row.css("td")[6].text.to_i
          ftm = row.css("td")[8].text.to_i
          fta = row.css("td")[9].text.to_i
          rebounds = row.css("td")[13].text.to_i
          assists = row.css("td")[14].text.to_i
          steals = row.css("td")[15].text.to_i
          blocks = row.css("td")[16].text.to_i
          turnovers = row.css("td")[17].text.to_i
          points = row.css("td")[19].text.to_i

          current_player = Player.find_by_name(name) || Player.create({ name: name, position: "NA", team_id: team.id})

          PlayerGame.create(
            player_id: current_player.id,
            game_id: self.id,
            points: points,
            rebounds: rebounds,
            assists: assists,
            steals: steals,
            blocks: blocks,
            turnovers: turnovers,
            minutes: minutes,
            fga: fga,
            fgm: fgm,
            three_fga: three_fga,
            three_fgm: three_fgm,
            fta: fta,
            ftm: ftm,
          )
        end
      end
    end
  end
  
  def other_team(this_team)
    if self.home_team == this_team
      return self.away_team
    elsif self.away_team == this_team
      return self.home_team
    else
      return nil
    end
  end
  
  def total_fantasy_points_for_team(team_id)
    Team.find(team_id).get_fantasy_point_for_game(self.id)
  end
  
  
end
