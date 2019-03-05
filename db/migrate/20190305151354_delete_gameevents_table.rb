class DeleteGameeventsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :gameevents
  end
end
