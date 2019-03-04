class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :room_id
      t.boolean :started

      t.timestamps
    end
  end
end
