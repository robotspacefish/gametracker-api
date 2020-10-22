# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_22_175439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consoles", force: :cascade do |t|
    t.string "name"
    t.string "platform_type", null: false
    t.bigint "platform_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["platform_type", "platform_id"], name: "index_consoles_on_platform_type_and_platform_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.string "idgb_id"
    t.string "member_rating"
    t.string "critic_rating"
    t.string "finish_time_hasty"
    t.string "finish_time_normal"
    t.string "finish_time_completionist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.boolean "completed"
    t.bigint "owned_game_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owned_game_id"], name: "index_notes_on_owned_game_id"
  end

  create_table "owned_games", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "game_id"
    t.integer "anticipation_rating"
    t.decimal "rating"
    t.boolean "completed"
    t.boolean "want_to_play"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_owned_games_on_game_id"
    t.index ["user_id"], name: "index_owned_games_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.boolean "private_library"
    t.boolean "private_recently_played"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
