class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.text :poster_path
      t.text :backdrop_path
      t.text :overview
      t.integer :movie_id
      t.integer :average_vote

      t.timestamps null: false
    end
  end
end
