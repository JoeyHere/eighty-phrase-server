class AddCodeToRoom < ActiveRecord::Migration[5.2]
  def change
     add_column :rooms, :code, :string
  end
end
