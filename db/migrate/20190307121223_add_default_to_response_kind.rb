class AddDefaultToResponseKind < ActiveRecord::Migration[5.2]
  def change
    change_column_default(:responses, :kind, 'user')
  end
end
