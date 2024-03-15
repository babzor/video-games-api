class Platform < ApplicationRecord
    self.primary_key = 'code'

    has_many :video_game_platforms, foreign_key: 'platform_code'
    has_many :video_games, through: :video_game_platforms

    validates :name, presence: true
end
