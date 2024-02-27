class CreateVideoGames < ActiveRecord::Migration[7.0]
  def change
    create_table :video_games do |t|
      t.string :name
      t.date :release_date
      t.string :studio
      t.integer :ratings

      t.timestamps
    end
  end
end
