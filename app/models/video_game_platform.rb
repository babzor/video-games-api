class VideoGamePlatform < ApplicationRecord
    belongs_to :video_game
    belongs_to :platform, foreign_key: 'platform_code'
end
