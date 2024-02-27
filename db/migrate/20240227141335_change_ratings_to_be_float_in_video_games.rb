class ChangeRatingsToBeFloatInVideoGames < ActiveRecord::Migration[7.0]
  def up
    change_column :video_games, :ratings, :float
  end

  def down
    change_column :video_games, :ratings, :integer
  end
end
