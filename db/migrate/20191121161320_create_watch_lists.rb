class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :movie, null: false, foreign_key: true
      t.text :movie_title
      t.text :poster_path
      t.text :comments

      t.timestamps null: false
    end
  end
end
