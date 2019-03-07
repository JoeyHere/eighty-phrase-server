class AddKindToResponse < ActiveRecord::Migration[5.2]
  def change
      add_column :responses, :kind, :string
  end
end
