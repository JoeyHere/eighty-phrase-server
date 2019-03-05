class RemoveEndTimeFromGameevents < ActiveRecord::Migration[5.2]
  def change
    remove_column :gameevents, :end_time
  end
end
