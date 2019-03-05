class ChangeNameToContentInEvent < ActiveRecord::Migration[5.2]
  def change
    rename_column :gameevents, :name, :content

  end
end
