class CreateVideoGamePlatformsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :video_game_platforms, id: false do |t|
      t.references :video_game, foreign_keys: true, index: true
      t.string :platform_code, null: false, index: true
    end
  end
end
