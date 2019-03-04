class RemoveGamefromRoundReplaceWithRoom < ActiveRecord::Migration[5.2]
  def change
    remove_column :rounds, :game_id
    add_column :rounds, :room_id, :integer
  end
end
