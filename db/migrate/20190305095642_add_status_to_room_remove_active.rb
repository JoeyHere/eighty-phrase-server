class AddStatusToRoomRemoveActive < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :active
    add_column :rooms, :status, :string, default: "open" 
  end
end
