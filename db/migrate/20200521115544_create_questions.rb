class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :matter
      t.integer :quiz_id
      t.index [:quiz_id], name: "index_questions_on_quiz_id"

      t.timestamps
    end
  end
end
