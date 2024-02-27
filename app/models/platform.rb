class Platform < ApplicationRecord
    has_and_belongs_to_many :video_games, join_table: :platforms_video_games, foreign_key: :platform_name, association_foreign_key: :video_game_id
    validates :name, presence: true
end
