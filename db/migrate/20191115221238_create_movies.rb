class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :movie_id
      t.string :title
      t.string :release_date
      t.text :poster_path
      t.text :backdrop_path
      t.text :overview
      t.float :average_vote
      t.integer :budget
      t.text :tagline
      t.integer :runtime

      t.timestamps null: false
    end
  end
end
