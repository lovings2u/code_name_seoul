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

ActiveRecord::Schema.define(version: 20170810020801) do

  create_table "histories", force: :cascade do |t|
    t.boolean  "answerbool",     null: false
    t.string   "answer",         null: false
    t.integer  "questionnumber", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "url",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_histories", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "history_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["history_id"], name: "index_player_histories_on_history_id"
    t.index ["player_id"], name: "index_player_histories_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string   "name",                   default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "theme_id"
    t.integer  "team_id"
    t.integer  "currentstage",           default: 0,  null: false
    t.integer  "hintcount",              default: 10, null: false
    t.datetime "starttime"
    t.datetime "endtime"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["name"], name: "index_players_on_name", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["theme_id"], name: "index_players_on_theme_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "theme_id"
    t.time     "playtime",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_records_on_player_id"
    t.index ["theme_id"], name: "index_records_on_theme_id"
  end

  create_table "solve_stages", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "stage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_solve_stages_on_player_id"
    t.index ["stage_id"], name: "index_solve_stages_on_stage_id"
  end

  create_table "stage_hint_images", force: :cascade do |t|
    t.integer  "stage_id"
    t.integer  "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_stage_hint_images_on_image_id"
    t.index ["stage_id"], name: "index_stage_hint_images_on_stage_id"
  end

  create_table "stages", force: :cascade do |t|
    t.integer  "number",         null: false
    t.string   "name",           null: false
    t.string   "questionlayout", null: false
    t.string   "answerlayout",   null: false
    t.string   "answer",         null: false
    t.string   "q_img"
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["team_id"], name: "index_stages_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "imageurl",    null: false
    t.integer  "theme_id"
    t.integer  "anotherteam"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["theme_id"], name: "index_teams_on_theme_id"
  end

  create_table "theme_records", force: :cascade do |t|
    t.integer  "theme_id"
    t.integer  "record_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_id"], name: "index_theme_records_on_record_id"
    t.index ["theme_id"], name: "index_theme_records_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "imageurl"
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
