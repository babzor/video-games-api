class VideoGame < ApplicationRecord
    has_many :video_game_platforms
    has_many :platforms, through: :video_game_platforms

    validates :name, presence: true
end
