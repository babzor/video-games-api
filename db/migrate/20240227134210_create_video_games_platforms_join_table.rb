class CreateVideoGamesPlatformsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :video_games, :platforms do |t|
      # t.index [:video_game_id, :platform_id]
      # t.index [:platform_id, :video_game_id]
    end
  end
end
