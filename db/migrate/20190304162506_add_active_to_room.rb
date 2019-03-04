class AddActiveToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :active, :boolean, default: true
  end
end
