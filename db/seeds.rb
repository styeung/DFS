require 'date'
require 'nokogiri'
require 'open-uri'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teams = Team.create([
  {
    name: "ATL"
  },
  {
    name: "BOS"
  },
  {
    name: "BRK"
  },
  {
    name: "CHO"
  },
  {
    name: "CHI"
  },
  {
    name: "CLE"
  },
  {
    name: "DAL"
  },
  {
    name: "DEN"
  },
  {
    name: "DET"
  },
  {
    name: "GSW"
  },
  {
    name: "HOU"
  },
  {
    name: "IND"
  },
  {
    name: "LAC"
  },
  {
    name: "LAL"
  },
  {
    name: "MEM"
  },
  {
    name: "MIA"
  },
  {
    name: "MIL"
  },
  {
    name: "MIN"
  },
  {
    name: "NOP"
  },
  {
    name: "NYK"
  },
  {
    name: "OKC"
  },
  {
    name: "ORL"
  },
  {
    name: "PHI"
  },
  {
    name: "PHO"
  },
  {
    name: "POR"
  },
  {
    name: "SAC"
  },
  {
    name: "SAS"
  },
  {
    name: "TOR"
  },
  {
    name: "UTA"
  },
  {
    name: "WAS"
  }
])

Team.create_all_players

# Team.all.each do |team|
#   team_name = team.name
#
#   domain = "http://www.basketball-reference.com"
#   path = "teams"
#   game_detail = "#{team_name}"
#   year = "2015"
#
#   page = Nokogiri::HTML(open("#{ domain }/#{ path }/#{ game_detail }/#{ year }.html"))
#
#   roster_rows = page.css("#div_roster tbody tr")
#
#   roster_rows.each do |row|
#     player_name = row.css("td")[1].css("a").text
#     player_position = row.css("td")[2].text
#
#     Player.create({
#       name: player_name,
#       position: player_position,
#       team_id: team.id
#     })
#   end
# end
  


games = Game.create([
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Nov 6 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Thu Nov 6 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Nov 20 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Thu Nov 20 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Thu Dec 11 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Thu Dec 11 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Thu Jan 1 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Jan 1 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Jan 6 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Jan 6 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Jan 20 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Tue Jan 20 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Feb 1 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Feb 1 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Thu Feb 12 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Feb 19 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Thu Feb 19 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Feb 26 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Thu Feb 26 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Thu Mar 5 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Thu Mar 5 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Mar 26 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("TOR").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("GSW").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Thu Apr 9 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Thu Apr 9 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("PHI").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("MIN").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("ORL").id
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("POR").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("CLE").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("DEN").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("DET").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("BRK").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("PHO").id,
    home_team_id: Team.find_by_name("SAS").id
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("WAS").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("NYK").id,
    home_team_id: Team.find_by_name("ATL").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("CHI").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("HOU").id,
    home_team_id: Team.find_by_name("CHO").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("MEM").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("LAC").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("MIA").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("NOP").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("OKC").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("MIL").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("LAL").id,
    home_team_id: Team.find_by_name("SAC").id
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team_id: Team.find_by_name("DAL").id,
    home_team_id: Team.find_by_name("UTA").id
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team_id: Team.find_by_name("TOR").id,
    home_team_id: Team.find_by_name("BOS").id
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("IND").id
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team_id: Team.find_by_name("LAC").id,
    home_team_id: Team.find_by_name("PHO").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("ORL").id,
    home_team_id: Team.find_by_name("BRK").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("ATL").id,
    home_team_id: Team.find_by_name("CHI").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("WAS").id,
    home_team_id: Team.find_by_name("CLE").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("POR").id,
    home_team_id: Team.find_by_name("DAL").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("DEN").id,
    home_team_id: Team.find_by_name("GSW").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("UTA").id,
    home_team_id: Team.find_by_name("HOU").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("SAC").id,
    home_team_id: Team.find_by_name("LAL").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("IND").id,
    home_team_id: Team.find_by_name("MEM").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("BOS").id,
    home_team_id: Team.find_by_name("MIL").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("OKC").id,
    home_team_id: Team.find_by_name("MIN").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("SAS").id,
    home_team_id: Team.find_by_name("NOP").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("DET").id,
    home_team_id: Team.find_by_name("NYK").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("MIA").id,
    home_team_id: Team.find_by_name("PHI").id
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team_id: Team.find_by_name("CHO").id,
    home_team_id: Team.find_by_name("TOR").id
  }
])


