require 'date'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


games = Game.create([
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team:"HOU",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team:"ORL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Oct 28 2014"),
    away_team:"DAL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"BRK",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"MIL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"DET",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"PHI",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"MIN",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"WAS",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"CHI",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"LAL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"OKC",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"GSW",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"ATL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Oct 29 2014"),
    away_team:"HOU",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team:"NYK",
    home_team:"CLE"
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team:"UTA",
    home_team:"DAL"
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team:"OKC",
    home_team:"LAC"
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team:"DET",
    home_team:"MIN"
  },
  {
    date: Date.parse("Thu Oct 30 2014"),
    away_team:"WAS",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"CLE",
    home_team:"CHI"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"MEM",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"LAC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"PHI",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"SAS",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Oct 31 2014"),
    away_team:"POR",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"IND",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"MEM",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"BRK",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"LAL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"BOS",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"CHI",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"DAL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"DEN",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"TOR",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"MIA",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"PHO",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Nov 1 2014"),
    away_team:"MIL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team:"SAC",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team:"TOR",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team:"CHA",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Nov 2 2014"),
    away_team:"GSW",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"OKC",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"BOS",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"SAC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"UTA",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"NOP",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Nov 3 2014"),
    away_team:"HOU",
    home_team:"PHI"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"ORL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"MIL",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"PHO",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"HOU",
    home_team:"MIA"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"CHA",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"WAS",
    home_team:"NYK"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"CLE",
    home_team:"POR"
  },
  {
    date: Date.parse("Tue Nov 4 2014"),
    away_team:"OKC",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"TOR",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"MIN",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"MIA",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"NYK",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"LAC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"CHI",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"ORL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"MEM",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"DEN",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"ATL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"CLE",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Nov 5 2014"),
    away_team:"IND",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Nov 6 2014"),
    away_team:"SAS",
    home_team:"HOU"
  },
  {
    date: Date.parse("Thu Nov 6 2014"),
    away_team:"DAL",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"IND",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"NYK",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"ATL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"CLE",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"MIL",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"MEM",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"MIN",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"CHI",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"SAC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"WAS",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Nov 7 2014"),
    away_team:"DAL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"NYK",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"BOS",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"GSW",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"WAS",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"POR",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"MIN",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"MEM",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Nov 8 2014"),
    away_team:"NOP",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"ORL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"MIA",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"UTA",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"CHA",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"SAC",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"GSW",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"DEN",
    home_team:"POR"
  },
  {
    date: Date.parse("Sun Nov 9 2014"),
    away_team:"PHI",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team:"DET",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team:"NOP",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team:"UTA",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team:"SAS",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Nov 10 2014"),
    away_team:"ATL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"SAC",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"SAS",
    home_team:"GSW"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"LAL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"OKC",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"CHA",
    home_team:"POR"
  },
  {
    date: Date.parse("Tue Nov 11 2014"),
    away_team:"ORL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"UTA",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"OKC",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"POR",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"IND",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"HOU",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"LAL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"ORL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"BRK",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Nov 12 2014"),
    away_team:"DET",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team:"PHI",
    home_team:"DAL"
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team:"BRK",
    home_team:"GSW"
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team:"SAC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Thu Nov 13 2014"),
    away_team:"CHI",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"MIA",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"CLE",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"PHI",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"DEN",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"SAS",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"MIN",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"UTA",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"DET",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"MIL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Nov 14 2014"),
    away_team:"CHA",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"IND",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"ATL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"MIN",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"CHA",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"PHO",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"DET",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"BRK",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"SAS",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"UTA",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sat Nov 15 2014"),
    away_team:"ORL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team:"GSW",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team:"MIL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team:"DEN",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Nov 16 2014"),
    away_team:"HOU",
    home_team:"OKC"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"PHO",
    home_team:"BOS"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"MIA",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"DAL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"DEN",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"ORL",
    home_team:"DET"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"CHI",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"HOU",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"NOP",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Nov 17 2014"),
    away_team:"PHI",
    home_team:"SAS"
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team:"LAL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team:"NYK",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team:"NOP",
    home_team:"SAC"
  },
  {
    date: Date.parse("Tue Nov 18 2014"),
    away_team:"OKC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"MIL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"SAS",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"OKC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"PHO",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"LAL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"CHA",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"NYK",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"LAC",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"BOS",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"MEM",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Nov 19 2014"),
    away_team:"DAL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Nov 20 2014"),
    away_team:"LAC",
    home_team:"MIA"
  },
  {
    date: Date.parse("Thu Nov 20 2014"),
    away_team:"CHI",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"DET",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"ORL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"LAL",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"NOP",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"UTA",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"BOS",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"SAS",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"BRK",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"PHO",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"CHI",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"MIL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Nov 21 2014"),
    away_team:"CLE",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"TOR",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"DAL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"PHO",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"WAS",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"SAC",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"PHI",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"MIA",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"BRK",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sat Nov 22 2014"),
    away_team:"NOP",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team:"POR",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team:"DEN",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team:"LAC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team:"CHA",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Nov 23 2014"),
    away_team:"GSW",
    home_team:"OKC"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"LAC",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"ORL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"IND",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"NYK",
    home_team:"HOU"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"POR",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"PHO",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Nov 24 2014"),
    away_team:"CHI",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team:"CHI",
    home_team:"DEN"
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team:"GSW",
    home_team:"MIA"
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team:"DET",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team:"SAC",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Nov 25 2014"),
    away_team:"ATL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"TOR",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"POR",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"WAS",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"NYK",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"LAC",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"SAC",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"MEM",
    home_team:"LAL"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"MIL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"UTA",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"GSW",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"BRK",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"DEN",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Nov 26 2014"),
    away_team:"IND",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"NOP",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"CHI",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"GSW",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"PHO",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"MIL",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"LAC",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"ORL",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"MIN",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"NYK",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"MEM",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"SAC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Nov 28 2014"),
    away_team:"DAL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"CHA",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"IND",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"HOU",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"DAL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"LAC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Nov 29 2014"),
    away_team:"NOP",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"SAS",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"CHI",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"GSW",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"TOR",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"MIA",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"ORL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"MIN",
    home_team:"POR"
  },
  {
    date: Date.parse("Sun Nov 30 2014"),
    away_team:"MEM",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team:"MIN",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team:"SAS",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team:"DEN",
    home_team:"UTA"
  },
  {
    date: Date.parse("Mon Dec 1 2014"),
    away_team:"MIA",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"BOS",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"DAL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"MIL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"POR",
    home_team:"DEN"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"LAL",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"ORL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"OKC",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"BRK",
    home_team:"NYK"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"IND",
    home_team:"PHO"
  },
  {
    date: Date.parse("Tue Dec 2 2014"),
    away_team:"TOR",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"DET",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"SAS",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"CHI",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"MEM",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"ORL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"ATL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"DAL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"PHI",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"TOR",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Dec 3 2014"),
    away_team:"LAL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team:"NOP",
    home_team:"GSW"
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team:"CLE",
    home_team:"NYK"
  },
  {
    date: Date.parse("Thu Dec 4 2014"),
    away_team:"IND",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"LAL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"ATL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"NYK",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"PHO",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"SAS",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"MIA",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"HOU",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"OKC",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"IND",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"CLE",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"ORL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Fri Dec 5 2014"),
    away_team:"DEN",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"GSW",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"PHI",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"PHO",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"NOP",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"ORL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sat Dec 6 2014"),
    away_team:"MIN",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"DEN",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"WAS",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"MIL",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"OKC",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"NOP",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"MIA",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sun Dec 7 2014"),
    away_team:"POR",
    home_team:"NYK"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"CLE",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"ATL",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"PHO",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"GSW",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"UTA",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"DEN",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Dec 8 2014"),
    away_team:"BOS",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"TOR",
    home_team:"CLE"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"POR",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"SAC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"DAL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"NYK",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"MIL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"MIA",
    home_team:"PHO"
  },
  {
    date: Date.parse("Tue Dec 9 2014"),
    away_team:"SAS",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"PHI",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"BRK",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"BOS",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"NOP",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"MIA",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"HOU",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"LAC",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"POR",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"WAS",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Dec 10 2014"),
    away_team:"NYK",
    home_team:"SAS"
  },
  {
    date: Date.parse("Thu Dec 11 2014"),
    away_team:"CLE",
    home_team:"OKC"
  },
  {
    date: Date.parse("Thu Dec 11 2014"),
    away_team:"HOU",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"ORL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"NYK",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"PHI",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"POR",
    home_team:"CHI"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"CHA",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"OKC",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"CLE",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"DET",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"LAL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"IND",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"MIA",
    home_team:"UTA"
  },
  {
    date: Date.parse("Fri Dec 12 2014"),
    away_team:"LAC",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"BRK",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"GSW",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"DEN",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"POR",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"LAC",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"ATL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"MEM",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Dec 13 2014"),
    away_team:"DET",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"SAS",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"CHI",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"LAL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"GSW",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"TOR",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"PHO",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Dec 14 2014"),
    away_team:"UTA",
    home_team:"WAS"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"CHI",
    home_team:"ATL"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"CHA",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"LAL",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"DET",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"BOS",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"MIL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"SAS",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Dec 15 2014"),
    away_team:"ORL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"MIA",
    home_team:"BRK"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"GSW",
    home_team:"MEM"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"UTA",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"DAL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"OKC",
    home_team:"SAC"
  },
  {
    date: Date.parse("Tue Dec 16 2014"),
    away_team:"MIN",
    home_team:"WAS"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"ORL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"PHO",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"ATL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"HOU",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"DAL",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"IND",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"UTA",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"MIL",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"MEM",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Dec 17 2014"),
    away_team:"BRK",
    home_team:"TOR"
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team:"NYK",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team:"OKC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team:"NOP",
    home_team:"HOU"
  },
  {
    date: Date.parse("Thu Dec 18 2014"),
    away_team:"MIL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"MIN",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"BRK",
    home_team:"CLE"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"LAC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"TOR",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"OKC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"CHI",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"WAS",
    home_team:"MIA"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"UTA",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"CHA",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Dec 19 2014"),
    away_team:"POR",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"UTA",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"SAS",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"IND",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"ATL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"MIL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"POR",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sat Dec 20 2014"),
    away_team:"PHO",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"DET",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"MEM",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"BOS",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"IND",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"NOP",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"PHI",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"LAL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"NYK",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sun Dec 21 2014"),
    away_team:"PHO",
    home_team:"WAS"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"TOR",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"DEN",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"ATL",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"SAC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"POR",
    home_team:"HOU"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"UTA",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Dec 22 2014"),
    away_team:"LAC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"LAC",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"DEN",
    home_team:"BRK"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"MIN",
    home_team:"CLE"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"NOP",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"GSW",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"PHI",
    home_team:"MIA"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"CHA",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"POR",
    home_team:"OKC"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"BOS",
    home_team:"ORL"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"DAL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Tue Dec 23 2014"),
    away_team:"CHI",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team:"LAL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team:"GSW",
    home_team:"LAC"
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team:"CLE",
    home_team:"MIA"
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team:"WAS",
    home_team:"NYK"
  },
  {
    date: Date.parse("Thu Dec 25 2014"),
    away_team:"OKC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"MIL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"BRK",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"LAL",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"MIN",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"IND",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"HOU",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"SAS",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"CHA",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"CLE",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"PHI",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Dec 26 2014"),
    away_team:"PHO",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"IND",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"NOP",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"ORL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"MIN",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"TOR",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"MEM",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"ATL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"NYK",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"PHI",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Dec 27 2014"),
    away_team:"BOS",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"DET",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"OKC",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"TOR",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"PHO",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"NYK",
    home_team:"POR"
  },
  {
    date: Date.parse("Sun Dec 28 2014"),
    away_team:"HOU",
    home_team:"SAS"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"SAC",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"MIL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"WAS",
    home_team:"HOU"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"CHI",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"UTA",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Dec 29 2014"),
    away_team:"ORL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"CLE",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"BRK",
    home_team:"CHI"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"WAS",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"LAL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"PHI",
    home_team:"GSW"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"SAS",
    home_team:"MEM"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"PHO",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"DET",
    home_team:"ORL"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"TOR",
    home_team:"POR"
  },
  {
    date: Date.parse("Tue Dec 30 2014"),
    away_team:"MIN",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"SAC",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"MIL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"CHA",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"MIA",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"NYK",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"PHO",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Dec 31 2014"),
    away_team:"NOP",
    home_team:"SAS"
  },
  {
    date: Date.parse("Thu Jan 1 2015"),
    away_team:"DEN",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Jan 1 2015"),
    away_team:"SAC",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"DAL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"CLE",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"TOR",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"MEM",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"IND",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"HOU",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"DET",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"WAS",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"BRK",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"PHI",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Jan 2 2015"),
    away_team:"ATL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"BOS",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"MEM",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"MIA",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"PHI",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"UTA",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"CHA",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"ATL",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Jan 3 2015"),
    away_team:"WAS",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"DAL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"SAC",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"IND",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"BRK",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"MIL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Jan 4 2015"),
    away_team:"TOR",
    home_team:"PHO"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"CHA",
    home_team:"BOS"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"DAL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"HOU",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"OKC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"ATL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"NYK",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"DEN",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"WAS",
    home_team:"NOP"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"CLE",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"LAL",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Jan 5 2015"),
    away_team:"IND",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Jan 6 2015"),
    away_team:"PHO",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Jan 6 2015"),
    away_team:"DET",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"MEM",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"BOS",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"UTA",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"NOP",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"HOU",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"DET",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"ORL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"IND",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"LAL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"PHO",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"MIL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"OKC",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Jan 7 2015"),
    away_team:"NYK",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team:"HOU",
    home_team:"NYK"
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team:"MIA",
    home_team:"POR"
  },
  {
    date: Date.parse("Thu Jan 8 2015"),
    away_team:"CHA",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"PHI",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"ATL",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"CLE",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"BOS",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"ORL",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"MIN",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"MEM",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"UTA",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"DEN",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"PHO",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Jan 9 2015"),
    away_team:"CHI",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"MIL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"BRK",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"UTA",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"DAL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"SAS",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"CHA",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"IND",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"ORL",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Jan 10 2015"),
    away_team:"BOS",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team:"WAS",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team:"MIA",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team:"POR",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team:"PHO",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sun Jan 11 2015"),
    away_team:"CLE",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team:"NOP",
    home_team:"BOS"
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team:"HOU",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team:"ORL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Jan 12 2015"),
    away_team:"DET",
    home_team:"TOR"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"MIN",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"MIA",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"ATL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"CLE",
    home_team:"PHO"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"DAL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"GSW",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Jan 13 2015"),
    away_team:"SAS",
    home_team:"WAS"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"ATL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"MEM",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"WAS",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"SAS",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"DAL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"NOP",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"MIA",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"HOU",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"LAC",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Jan 14 2015"),
    away_team:"PHI",
    home_team:"TOR"
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team:"OKC",
    home_team:"HOU"
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team:"CLE",
    home_team:"LAL"
  },
  {
    date: Date.parse("Thu Jan 15 2015"),
    away_team:"NYK",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"CHI",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"DEN",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"DET",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"CLE",
    home_team:"LAC"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"GSW",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"MEM",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"NOP",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"MIN",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"MIA",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"POR",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"ATL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"LAL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Fri Jan 16 2015"),
    away_team:"BRK",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"WAS",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"ATL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"IND",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"MIN",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"PHI",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"GSW",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"POR",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Jan 17 2015"),
    away_team:"LAC",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team:"OKC",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team:"UTA",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Jan 18 2015"),
    away_team:"NOP",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"DET",
    home_team:"ATL"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"MIN",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"CHI",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"DEN",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"IND",
    home_team:"HOU"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"BOS",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"DAL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"TOR",
    home_team:"MIL"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"NOP",
    home_team:"NYK"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"LAL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"SAC",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Jan 19 2015"),
    away_team:"PHI",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Jan 20 2015"),
    away_team:"SAS",
    home_team:"DEN"
  },
  {
    date: Date.parse("Tue Jan 20 2015"),
    away_team:"OKC",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"IND",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"MIA",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"UTA",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"ORL",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"HOU",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"TOR",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"DAL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"LAL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"NYK",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"POR",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"BRK",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Jan 21 2015"),
    away_team:"OKC",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team:"SAS",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team:"BRK",
    home_team:"LAC"
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team:"UTA",
    home_team:"MIL"
  },
  {
    date: Date.parse("Thu Jan 22 2015"),
    away_team:"BOS",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"OKC",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"CHA",
    home_team:"CLE"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"CHI",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"BOS",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"SAC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"IND",
    home_team:"MIA"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"NOP",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"ORL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"TOR",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"HOU",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Jan 23 2015"),
    away_team:"LAL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team:"NYK",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team:"PHI",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team:"DET",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team:"WAS",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Jan 24 2015"),
    away_team:"BRK",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"MIN",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"MIA",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"OKC",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"WAS",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"BOS",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"HOU",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"DAL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"IND",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"LAC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"MIL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Jan 25 2015"),
    away_team:"DET",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"POR",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"DEN",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"ORL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"PHI",
    home_team:"NOP"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"SAC",
    home_team:"NYK"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"MIN",
    home_team:"OKC"
  },
  {
    date: Date.parse("Mon Jan 26 2015"),
    away_team:"BOS",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"MEM",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"CLE",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"CHI",
    home_team:"GSW"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"TOR",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"WAS",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Jan 27 2015"),
    away_team:"MIL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"BRK",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"POR",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"DAL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"BOS",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"DEN",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"OKC",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"DET",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"WAS",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"CHA",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"SAC",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Jan 28 2015"),
    away_team:"LAC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team:"NYK",
    home_team:"IND"
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team:"CHI",
    home_team:"LAL"
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team:"DEN",
    home_team:"MEM"
  },
  {
    date: Date.parse("Thu Jan 29 2015"),
    away_team:"MIL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"POR",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"HOU",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"TOR",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"SAC",
    home_team:"CLE"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"DAL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"LAC",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"MIN",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"CHI",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Jan 30 2015"),
    away_team:"GSW",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"PHI",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"CHA",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"HOU",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"PHO",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"SAC",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"OKC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"POR",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"CLE",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"DAL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"LAC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sat Jan 31 2015"),
    away_team:"TOR",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Feb 1 2015"),
    away_team:"MIA",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Feb 1 2015"),
    away_team:"LAL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"LAC",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"PHI",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"MIN",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"ATL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"ORL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"MEM",
    home_team:"PHO"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"MIL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Feb 2 2015"),
    away_team:"CHA",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team:"MIA",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team:"BOS",
    home_team:"NYK"
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team:"DEN",
    home_team:"PHI"
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team:"UTA",
    home_team:"POR"
  },
  {
    date: Date.parse("Tue Feb 3 2015"),
    away_team:"GSW",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"WAS",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"DEN",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"DAL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"CHI",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"DET",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"LAL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"MIA",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"OKC",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"ORL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"BRK",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Feb 4 2015"),
    away_team:"MEM",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team:"WAS",
    home_team:"CHA"
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team:"LAC",
    home_team:"CLE"
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team:"PHO",
    home_team:"POR"
  },
  {
    date: Date.parse("Thu Feb 5 2015"),
    away_team:"DAL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"GSW",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"PHI",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"NYK",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"DEN",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"MIL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"CLE",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"MEM",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"NOP",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"LAL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"UTA",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"MIA",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Feb 6 2015"),
    away_team:"LAC",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"POR",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"BOS",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"CHI",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"GSW",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"CHA",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"SAC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Feb 7 2015"),
    away_team:"BRK",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"IND",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"LAL",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"MIN",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"POR",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"ATL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"LAC",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"CHI",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"PHO",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Feb 8 2015"),
    away_team:"SAS",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"LAC",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"OKC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"SAS",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"NYK",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"BRK",
    home_team:"MIL"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"ATL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"UTA",
    home_team:"NOP"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"GSW",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Feb 9 2015"),
    away_team:"ORL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team:"SAC",
    home_team:"CHI"
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team:"DET",
    home_team:"CHA"
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team:"DEN",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team:"BRK",
    home_team:"MEM"
  },
  {
    date: Date.parse("Tue Feb 10 2015"),
    away_team:"HOU",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"ATL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"MIA",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"UTA",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"SAS",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"HOU",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"SAC",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"GSW",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"IND",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"MEM",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"NYK",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"LAL",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Feb 11 2015"),
    away_team:"WAS",
    home_team:"TOR"
  },
  {
    date: Date.parse("Thu Feb 12 2015"),
    away_team:"CLE",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Feb 19 2015"),
    away_team:"SAS",
    home_team:"LAC"
  },
  {
    date: Date.parse("Thu Feb 19 2015"),
    away_team:"DAL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"TOR",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"HOU",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"CHI",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"SAS",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"BRK",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"DEN",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"PHO",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"MIA",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"NOP",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"IND",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"BOS",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"POR",
    home_team:"UTA"
  },
  {
    date: Date.parse("Fri Feb 20 2015"),
    away_team:"CLE",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team:"PHO",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team:"OKC",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team:"TOR",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team:"SAC",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Feb 21 2015"),
    away_team:"NOP",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"CHA",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"WAS",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"GSW",
    home_team:"IND"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"BOS",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"ATL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"CLE",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"DEN",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"PHI",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Feb 22 2015"),
    away_team:"MEM",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"MIL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"BRK",
    home_team:"DEN"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"MIN",
    home_team:"HOU"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"MEM",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"PHI",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"TOR",
    home_team:"NOP"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"BOS",
    home_team:"PHO"
  },
  {
    date: Date.parse("Mon Feb 23 2015"),
    away_team:"SAS",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team:"TOR",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team:"CLE",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team:"IND",
    home_team:"OKC"
  },
  {
    date: Date.parse("Tue Feb 24 2015"),
    away_team:"GSW",
    home_team:"WAS"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"DAL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"NYK",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"CHA",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"PHO",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"LAC",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"PHI",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"WAS",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"BRK",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"MIA",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"SAS",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"MEM",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Feb 25 2015"),
    away_team:"LAL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Feb 26 2015"),
    away_team:"GSW",
    home_team:"CLE"
  },
  {
    date: Date.parse("Thu Feb 26 2015"),
    away_team:"OKC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"ORL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"CHA",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"MIN",
    home_team:"CHI"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"UTA",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"NYK",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"BRK",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"CLE",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"MIL",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"LAC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"MIA",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"WAS",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"OKC",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"SAS",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Feb 27 2015"),
    away_team:"GSW",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"BRK",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"ATL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"MEM",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"TOR",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"SAS",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"MIL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Feb 28 2015"),
    away_team:"DET",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"GSW",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"LAC",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"NOP",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"CLE",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"PHI",
    home_team:"IND"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"OKC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"CHA",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Mar 1 2015"),
    away_team:"POR",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team:"GSW",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team:"NOP",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team:"PHO",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team:"LAC",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Mar 2 2015"),
    away_team:"TOR",
    home_team:"PHI"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"HOU",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"WAS",
    home_team:"CHI"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"LAL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"BOS",
    home_team:"CLE"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"MIL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Tue Mar 3 2015"),
    away_team:"UTA",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"UTA",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"CHA",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"MIL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"MEM",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"NYK",
    home_team:"IND"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"POR",
    home_team:"LAC"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"LAL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"DEN",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"DET",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"PHI",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"PHO",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"SAC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Mar 4 2015"),
    away_team:"CLE",
    home_team:"TOR"
  },
  {
    date: Date.parse("Thu Mar 5 2015"),
    away_team:"OKC",
    home_team:"CHI"
  },
  {
    date: Date.parse("Thu Mar 5 2015"),
    away_team:"DAL",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"CLE",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"PHO",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"TOR",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"DAL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"DET",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"CHI",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"LAL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"BOS",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"SAC",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"UTA",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"DEN",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Mar 6 2015"),
    away_team:"MIA",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"PHO",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"HOU",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"SAC",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"WAS",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"POR",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"MEM",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"IND",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sat Mar 7 2015"),
    away_team:"ATL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"UTA",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"CHA",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"LAC",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"DAL",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"TOR",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"BOS",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Mar 8 2015"),
    away_team:"CHI",
    home_team:"SAS"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"SAC",
    home_team:"ATL"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"MEM",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"WAS",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"NYK",
    home_team:"DEN"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"MIN",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"BOS",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"NOP",
    home_team:"MIL"
  },
  {
    date: Date.parse("Mon Mar 9 2015"),
    away_team:"GSW",
    home_team:"PHO"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"NOP",
    home_team:"BRK"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"CLE",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"ORL",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"DET",
    home_team:"LAL"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"TOR",
    home_team:"SAS"
  },
  {
    date: Date.parse("Tue Mar 10 2015"),
    away_team:"NYK",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"MEM",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"SAC",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"ATL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"DET",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"BRK",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"ORL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"LAC",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"CHI",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"MIN",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Mar 11 2015"),
    away_team:"HOU",
    home_team:"POR"
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team:"MIL",
    home_team:"IND"
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team:"NYK",
    home_team:"LAL"
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team:"CLE",
    home_team:"SAS"
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team:"HOU",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Mar 12 2015"),
    away_team:"MEM",
    home_team:"WAS"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"ORL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"CHI",
    home_team:"CHA"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"LAC",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"GSW",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"MIN",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"SAC",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"ATL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"DET",
    home_team:"POR"
  },
  {
    date: Date.parse("Fri Mar 13 2015"),
    away_team:"MIA",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"NYK",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"BOS",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"MIL",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"BRK",
    home_team:"PHI"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"DET",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Mar 14 2015"),
    away_team:"SAC",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"HOU",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"ATL",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"DEN",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"CHI",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"CLE",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"NYK",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"MIN",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Mar 15 2015"),
    away_team:"POR",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"PHI",
    home_team:"BOS"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"OKC",
    home_team:"DAL"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"LAL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"TOR",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"DEN",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"CLE",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"BRK",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"ATL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"CHA",
    home_team:"UTA"
  },
  {
    date: Date.parse("Mon Mar 16 2015"),
    away_team:"POR",
    home_team:"WAS"
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team:"MEM",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team:"ORL",
    home_team:"HOU"
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team:"CHA",
    home_team:"LAC"
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team:"MIL",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Mar 17 2015"),
    away_team:"SAS",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"IND",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"BRK",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"ORL",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"ATL",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"POR",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"SAS",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"BOS",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"DET",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"LAC",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"MIN",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Mar 18 2015"),
    away_team:"WAS",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team:"DEN",
    home_team:"HOU"
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team:"UTA",
    home_team:"LAL"
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team:"MIN",
    home_team:"NYK"
  },
  {
    date: Date.parse("Thu Mar 19 2015"),
    away_team:"NOP",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"MIL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"TOR",
    home_team:"CHI"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"IND",
    home_team:"CLE"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"MEM",
    home_team:"DAL"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"NOP",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"WAS",
    home_team:"LAC"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"DEN",
    home_team:"MIA"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"ATL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"POR",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"NYK",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"CHA",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Mar 20 2015"),
    away_team:"BOS",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team:"CHI",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team:"UTA",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team:"PHO",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team:"BRK",
    home_team:"IND"
  },
  {
    date: Date.parse("Sat Mar 21 2015"),
    away_team:"POR",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"SAS",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"DET",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"NOP",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"PHI",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"CLE",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"CHA",
    home_team:"MIN"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"MIA",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"DEN",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"DAL",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"WAS",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Mar 22 2015"),
    away_team:"NYK",
    home_team:"TOR"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"BOS",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"CHA",
    home_team:"CHI"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"WAS",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"HOU",
    home_team:"IND"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"MEM",
    home_team:"NYK"
  },
  {
    date: Date.parse("Mon Mar 23 2015"),
    away_team:"MIN",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"SAS",
    home_team:"DAL"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"TOR",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"MIA",
    home_team:"MIL"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"LAL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"GSW",
    home_team:"POR"
  },
  {
    date: Date.parse("Tue Mar 24 2015"),
    away_team:"PHI",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"MIA",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"BRK",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"PHI",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"CLE",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"LAL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"HOU",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"LAC",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"ATL",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"SAC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"OKC",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"CHI",
    home_team:"TOR"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"POR",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Mar 25 2015"),
    away_team:"IND",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Mar 26 2015"),
    away_team:"IND",
    home_team:"MIL"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"MIA",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"CLE",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"UTA",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"MIN",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"GSW",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"SAC",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"BOS",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"DET",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"LAC",
    home_team:"PHI"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"POR",
    home_team:"PHO"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"DAL",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"LAL",
    home_team:"TOR"
  },
  {
    date: Date.parse("Fri Mar 27 2015"),
    away_team:"CHA",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team:"NYK",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team:"ATL",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team:"GSW",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team:"DEN",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Mar 28 2015"),
    away_team:"OKC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"LAC",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"LAL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"PHI",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"DAL",
    home_team:"IND"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"DET",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"MIN",
    home_team:"NOP"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"OKC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"MEM",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Mar 29 2015"),
    away_team:"HOU",
    home_team:"WAS"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"MIL",
    home_team:"ATL"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"BOS",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"SAC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"UTA",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"LAL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"PHO",
    home_team:"POR"
  },
  {
    date: Date.parse("Mon Mar 30 2015"),
    away_team:"HOU",
    home_team:"TOR"
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team:"IND",
    home_team:"BRK"
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team:"ATL",
    home_team:"DET"
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team:"GSW",
    home_team:"LAC"
  },
  {
    date: Date.parse("Tue Mar 31 2015"),
    away_team:"SAS",
    home_team:"MIA"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"IND",
    home_team:"BOS"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"DET",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"SAC",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"NOP",
    home_team:"LAL"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"CHI",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"TOR",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"BRK",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"DAL",
    home_team:"OKC"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"SAS",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"LAC",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"DEN",
    home_team:"UTA"
  },
  {
    date: Date.parse("Wed Apr 1 2015"),
    away_team:"PHI",
    home_team:"WAS"
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team:"MIA",
    home_team:"CLE"
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team:"HOU",
    home_team:"DAL"
  },
  {
    date: Date.parse("Thu Apr 2 2015"),
    away_team:"PHO",
    home_team:"GSW"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"MIL",
    home_team:"BOS"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"TOR",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"DET",
    home_team:"CHI"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"CHA",
    home_team:"IND"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"POR",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"OKC",
    home_team:"MEM"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"ORL",
    home_team:"MIN"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"NOP",
    home_team:"SAC"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"DEN",
    home_team:"SAS"
  },
  {
    date: Date.parse("Fri Apr 3 2015"),
    away_team:"NYK",
    home_team:"WAS"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"BRK",
    home_team:"ATL"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"PHI",
    home_team:"CHA"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"GSW",
    home_team:"DAL"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"LAC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"MIA",
    home_team:"DET"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"WAS",
    home_team:"MEM"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"ORL",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"UTA",
    home_team:"PHO"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"NOP",
    home_team:"POR"
  },
  {
    date: Date.parse("Sat Apr 4 2015"),
    away_team:"BOS",
    home_team:"TOR"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"CHI",
    home_team:"CLE"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"MIA",
    home_team:"IND"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"LAC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"PHI",
    home_team:"NYK"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"HOU",
    home_team:"OKC"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"UTA",
    home_team:"SAC"
  },
  {
    date: Date.parse("Sun Apr 5 2015"),
    away_team:"GSW",
    home_team:"SAS"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"PHO",
    home_team:"ATL"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"LAL",
    home_team:"LAC"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"CHA",
    home_team:"MIA"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"GSW",
    home_team:"NOP"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"SAS",
    home_team:"OKC"
  },
  {
    date: Date.parse("Tue Apr 7 2015"),
    away_team:"MIN",
    home_team:"SAC"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"ATL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"TOR",
    home_team:"CHA"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"PHO",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"LAL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"BOS",
    home_team:"DET"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"NOP",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"CLE",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"IND",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"CHI",
    home_team:"ORL"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"WAS",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"MIN",
    home_team:"POR"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"HOU",
    home_team:"SAS"
  },
  {
    date: Date.parse("Wed Apr 8 2015"),
    away_team:"SAC",
    home_team:"UTA"
  },
  {
    date: Date.parse("Thu Apr 9 2015"),
    away_team:"POR",
    home_team:"GSW"
  },
  {
    date: Date.parse("Thu Apr 9 2015"),
    away_team:"CHI",
    home_team:"MIA"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"CHA",
    home_team:"ATL"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"WAS",
    home_team:"BRK"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"BOS",
    home_team:"CLE"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"DAL",
    home_team:"DEN"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"IND",
    home_team:"DET"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"SAS",
    home_team:"HOU"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"MIN",
    home_team:"LAL"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"PHO",
    home_team:"NOP"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"MIL",
    home_team:"NYK"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"SAC",
    home_team:"OKC"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"TOR",
    home_team:"ORL"
  },
  {
    date: Date.parse("Fri Apr 10 2015"),
    away_team:"MEM",
    home_team:"UTA"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"PHI",
    home_team:"CHI"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"MIN",
    home_team:"GSW"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"MEM",
    home_team:"LAC"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"TOR",
    home_team:"MIA"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"NYK",
    home_team:"ORL"
  },
  {
    date: Date.parse("Sat Apr 11 2015"),
    away_team:"UTA",
    home_team:"POR"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"CLE",
    home_team:"BOS"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"SAC",
    home_team:"DEN"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"CHA",
    home_team:"DET"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"NOP",
    home_team:"HOU"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"OKC",
    home_team:"IND"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"DAL",
    home_team:"LAL"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"BRK",
    home_team:"MIL"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"PHO",
    home_team:"SAS"
  },
  {
    date: Date.parse("Sun Apr 12 2015"),
    away_team:"ATL",
    home_team:"WAS"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"NYK",
    home_team:"ATL"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"CHI",
    home_team:"BRK"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"HOU",
    home_team:"CHA"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"DET",
    home_team:"CLE"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"MEM",
    home_team:"GSW"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"DEN",
    home_team:"LAC"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"ORL",
    home_team:"MIA"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"NOP",
    home_team:"MIN"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"POR",
    home_team:"OKC"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"MIL",
    home_team:"PHI"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"LAL",
    home_team:"SAC"
  },
  {
    date: Date.parse("Mon Apr 13 2015"),
    away_team:"DAL",
    home_team:"UTA"
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team:"TOR",
    home_team:"BOS"
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team:"WAS",
    home_team:"IND"
  },
  {
    date: Date.parse("Tue Apr 14 2015"),
    away_team:"LAC",
    home_team:"PHO"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"ORL",
    home_team:"BRK"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"ATL",
    home_team:"CHI"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"WAS",
    home_team:"CLE"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"POR",
    home_team:"DAL"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"DEN",
    home_team:"GSW"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"UTA",
    home_team:"HOU"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"SAC",
    home_team:"LAL"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"IND",
    home_team:"MEM"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"BOS",
    home_team:"MIL"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"OKC",
    home_team:"MIN"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"SAS",
    home_team:"NOP"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"DET",
    home_team:"NYK"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"MIA",
    home_team:"PHI"
  },
  {
    date: Date.parse("Wed Apr 15 2015"),
    away_team:"CHA",
    home_team:"TOR"
  }
])


