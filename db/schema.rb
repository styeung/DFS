# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150111032522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.date     "date",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "away_team_id", null: false
    t.integer  "home_team_id", null: false
  end

  add_index "games", ["away_team_id"], name: "index_games_on_away_team_id", using: :btree
  add_index "games", ["date"], name: "index_games_on_date", using: :btree
  add_index "games", ["home_team_id"], name: "index_games_on_home_team_id", using: :btree

  create_table "player_games", force: true do |t|
    t.integer  "player_id",  null: false
    t.integer  "game_id",    null: false
    t.integer  "points"
    t.integer  "rebounds"
    t.integer  "assists"
    t.integer  "steals"
    t.integer  "blocks"
    t.integer  "turnovers"
    t.float    "minutes"
    t.integer  "fga"
    t.integer  "fgm"
    t.integer  "three_fga"
    t.integer  "three_fgm"
    t.integer  "fta"
    t.integer  "ftm"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
  end

  add_index "player_games", ["game_id"], name: "index_player_games_on_game_id", using: :btree
  add_index "player_games", ["player_id"], name: "index_player_games_on_player_id", using: :btree
  add_index "player_games", ["team_id"], name: "index_player_games_on_team_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "name",       null: false
    t.string   "position",   null: false
    t.integer  "team_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players", ["name"], name: "index_players_on_name", using: :btree
  add_index "players", ["position"], name: "index_players_on_position", using: :btree
  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name",                    null: false
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "full_name"
    t.string   "espn_name"
    t.float    "points_for_team_PG"
    t.float    "points_for_team_SG"
    t.float    "points_for_team_SF"
    t.float    "points_for_team_PF"
    t.float    "points_for_team_C"
    t.float    "minutes_for_team_PG"
    t.float    "minutes_for_team_SG"
    t.float    "minutes_for_team_SF"
    t.float    "minutes_for_team_PF"
    t.float    "minutes_for_team_C"
    t.float    "points_against_team_PG"
    t.float    "points_against_team_SG"
    t.float    "points_against_team_SF"
    t.float    "points_against_team_PF"
    t.float    "points_against_team_C"
    t.float    "minutes_against_team_PG"
    t.float    "minutes_against_team_SG"
    t.float    "minutes_against_team_SF"
    t.float    "minutes_against_team_PF"
    t.float    "minutes_against_team_C"
  end

  add_index "teams", ["espn_name"], name: "index_teams_on_espn_name", using: :btree
  add_index "teams", ["full_name"], name: "index_teams_on_full_name", using: :btree
  add_index "teams", ["name"], name: "index_teams_on_name", using: :btree
  add_index "teams", ["type"], name: "index_teams_on_type", using: :btree

end
