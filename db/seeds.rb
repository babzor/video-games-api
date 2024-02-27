# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

platforms = Platform.create([
    { name: "PC" },
    { name: "PS3" },
    { name: "PS4" },
    { name: "PS5" },
    { name: "Switch" },
    { name: "WiiU" },
    { name: "One" },
])

video_games = VideoGame.create(
    [
        {
            "name": "The Witcher 3 : Wild Hunt",
            "release_date": "2015-05-19",
            "studio": "CD Projekt RED",
            "ratings": 19,
            "platforms": [
                :pc,
                :ps4,
                :ps5,
                :switch,
                :one
            ]
        },
        {
            "name": "Mario Kart 8 Deluxe",
            "release_date": "2017-04-28",
            "studio": "Nintendo",
            "ratings": 16,
            "platforms": [
                :switch
            ]
        },
        {
            "name": "Don't Starve",
            "release_date": "2013-04-23",
            "studio": "Capybara Games",
            "ratings": 17,
            "platforms": [
                :pc,
                :ps4,
                :switch,
                :one,
                :wiiU,
                :ps3
            ]
        }
    ]
)