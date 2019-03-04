class RemoveGamesReplaceWithRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :game_id
    add_column :users, :room_id, :integer
  end
end
