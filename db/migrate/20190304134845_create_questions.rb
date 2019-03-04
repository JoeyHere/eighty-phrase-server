class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :round_id
      t.string :content
      t.string :answer
      t.string :fake_answer
      t.integer :country_id

      t.timestamps
    end
  end
end
