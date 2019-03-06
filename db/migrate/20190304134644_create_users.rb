class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :admin, :default => false
      t.string :name
      t.integer :game_id
      t.integer :score, :default => 0

      t.timestamps
    end
  end
end
