class AddActiveToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :active, :boolean, default: false
  end
end
