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

ActiveRecord::Schema.define(version: 20170609084500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.date     "start_day"
    t.date     "end_day"
    t.integer  "bar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bar_id"], name: "index_availabilities_on_bar_id", using: :btree
  end

  create_table "bars", force: :cascade do |t|
    t.string   "address"
    t.string   "name"
    t.integer  "tv_number"
    t.integer  "tournament_size"
    t.string   "phone_number"
    t.text     "description"
    t.string   "offers"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "photo"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "games", force: :cascade do |t|
    t.string   "step"
    t.integer  "tournament_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "name"
    t.index ["tournament_id"], name: "index_games_on_tournament_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "position"
    t.boolean  "ps4"
    t.boolean  "xbox"
    t.integer  "controller_ps4"
    t.integer  "controller_xbox"
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "fifa_game_ps4"
    t.integer  "fifa_game_xbox"
    t.integer  "pool_index"
    t.string   "club"
    t.integer  "points",          default: 0
    t.integer  "bp",              default: 0
    t.integer  "bc",              default: 0
    t.integer  "diff",            default: 0
    t.index ["tournament_id"], name: "index_players_on_tournament_id", using: :btree
    t.index ["user_id"], name: "index_players_on_user_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content"
    t.integer  "tournament_id"
    t.integer  "player_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["player_id"], name: "index_reviews_on_player_id", using: :btree
    t.index ["tournament_id"], name: "index_reviews_on_tournament_id", using: :btree
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "goals"
    t.integer  "game_id"
    t.integer  "player_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "against_goals"
    t.index ["game_id"], name: "index_scores_on_game_id", using: :btree
    t.index ["player_id"], name: "index_scores_on_player_id", using: :btree
  end

  create_table "tournaments", force: :cascade do |t|
    t.date     "date"
    t.integer  "number_players"
    t.string   "status"
    t.integer  "number_consoles"
    t.integer  "number_games"
    t.string   "tournament_type"
    t.integer  "bar_id"
    t.integer  "user_id"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.integer  "number_controllers"
    t.string   "step",               default: "group"
    t.index ["bar_id"], name: "index_tournaments_on_bar_id", using: :btree
    t.index ["user_id"], name: "index_tournaments_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone_number"
    t.integer  "ranking"
    t.string   "username"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.integer  "total_goals",            default: 0
    t.integer  "total_against_goals"
    t.integer  "won_tournaments"
    t.string   "link"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "availabilities", "bars"
  add_foreign_key "games", "tournaments"
  add_foreign_key "players", "tournaments"
  add_foreign_key "players", "users"
  add_foreign_key "reviews", "players"
  add_foreign_key "reviews", "tournaments"
  add_foreign_key "scores", "games"
  add_foreign_key "scores", "players"
  add_foreign_key "tournaments", "bars"
  add_foreign_key "tournaments", "users"
end
