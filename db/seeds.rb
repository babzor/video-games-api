# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Platform.create([
    { code: :pc, name: "PC" },
    { code: :ps3, name: "PS3" },
    { code: :ps4, name: "PS4" },
    { code: :ps5, name: "PS5" },
    { code: :switch, name: "Switch" },
    { code: :wiiu,name: "WiiU" },
    { code: :one, name: "One" },
])
video_game1 = VideoGame.create("name": "The Witcher 3 : Wild Hunt", "release_date": "2015-05-19",
                               "studio": "CD Projekt RED", "ratings": 19)
video_game2 = VideoGame.create("name": "Mario Kart 8 Deluxe", "release_date": "2017-04-28",
                               "studio": "Nintendo", "ratings": 16)
video_game3 = VideoGame.create("name": "Don't Starve", "release_date": "2013-04-23",
                               "studio": "Capybara Games", "ratings": 17)

VideoGamePlatform.create(
  [
    {video_game_id: video_game1.id, platform_code: :pc},
    {video_game_id: video_game1.id, platform_code: :ps4},
    {video_game_id: video_game1.id, platform_code: :ps5},
    {video_game_id: video_game1.id, platform_code: :switch},
    {video_game_id: video_game1.id, platform_code: :one},

    {video_game_id: video_game2.id, platform_code: :switch},

    {video_game_id: video_game1.id, platform_code: :ps3},
    {video_game_id: video_game3.id, platform_code: :ps4},
    {video_game_id: video_game1.id, platform_code: :switch},
    {video_game_id: video_game1.id, platform_code: :one},
    {video_game_id: video_game1.id, platform_code: :wiiu},
  ])
