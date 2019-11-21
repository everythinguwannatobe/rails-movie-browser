class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :duration
      t.integer :budget
      t.text :cast


      t.timestamps null: false
    end
  end
end
