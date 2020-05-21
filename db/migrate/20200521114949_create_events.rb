class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.decimal :score
      t.decimal :current_question
      t.datetime :last_access
      t.integer :user_id
      t.integer :quiz_id
      t.decimal :highscore
      t.index [:quiz_id], name: "index_events_on_quiz_id"
      t.index [:user_id], name: "index_events_on_user_id"

      t.timestamps
    end
  end
end
