# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_02_27_134210) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "platforms", id: false, force: :cascade do |t|
    t.string "code", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_platforms_on_code", unique: true
  end

  create_table "video_game_platforms", id: false, force: :cascade do |t|
    t.bigint "video_game_id"
    t.string "platform_code", null: false
    t.index ["platform_code"], name: "index_video_game_platforms_on_platform_code"
    t.index ["video_game_id"], name: "index_video_game_platforms_on_video_game_id"
  end

  create_table "video_games", force: :cascade do |t|
    t.string "name"
    t.date "release_date"
    t.string "studio"
    t.float "ratings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
