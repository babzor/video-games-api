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

ActiveRecord::Schema[7.0].define(version: 2024_02_27_141335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platforms_video_games", id: false, force: :cascade do |t|
    t.bigint "video_game_id", null: false
    t.bigint "platform_id", null: false
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