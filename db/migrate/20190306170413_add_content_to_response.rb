class AddContentToResponse < ActiveRecord::Migration[5.2]
  def change
    add_column :responses, :content, :string
  end
end
