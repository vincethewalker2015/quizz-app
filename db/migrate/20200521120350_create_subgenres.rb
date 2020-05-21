class CreateSubgenres < ActiveRecord::Migration[5.2]
  def change
    create_table :subgenres do |t|
      t.string :title
      t.integer :genre_id
      t.index [:genre_id], name: "index_subgenres_on_genre_id"

      t.timestamps
    end
  end
end
