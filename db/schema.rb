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

ActiveRecord::Schema.define(version: 20170808082749) do

  create_table "histories", force: :cascade do |t|
    t.boolean  "answerbool"
    t.string   "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.integer  "theme_id",   null: false
    t.integer  "team_id",    null: false
    t.string   "name",       null: false
    t.integer  "hintcount",  null: false
    t.datetime "starttime",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["theme_id"], name: "index_players_on_theme_id"
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
    t.integer  "team_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["team_id"], name: "index_stages_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_teams_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "imageurl"
    t.text     "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
