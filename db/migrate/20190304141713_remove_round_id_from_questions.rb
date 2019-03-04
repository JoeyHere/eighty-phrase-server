class RemoveRoundIdFromQuestions < ActiveRecord::Migration[5.2]
  def change
    remove_column :questions, :round_id
  end
end
