class CreateGameevents < ActiveRecord::Migration[5.2]
  def change
    create_table :gameevents do |t|
      t.string :name
      t.string :round_id
      t.datetime :end_time

      t.timestamps
    end
  end
end
