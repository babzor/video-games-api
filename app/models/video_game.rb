class VideoGame < ApplicationRecord
    has_and_belongs_to_many :platforms, join_table: :platforms_video_games, foreign_key: :video_game_id, association_foreign_key: :platform_name
    validates :name, presence: true
end
