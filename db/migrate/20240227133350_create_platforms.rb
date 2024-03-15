class CreatePlatforms < ActiveRecord::Migration[7.0]
  def change
    create_table :platforms, id: false, primary_key: :code do |t|
      t.string :code, null: false
      t.string :name
      t.timestamps
      t.index :code, unique: true
    end
  end
end
