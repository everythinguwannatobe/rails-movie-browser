class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.belongs_to :users
      t.belongs_to :movies
      t.text :comments

      t.timestamps null: false
    end
  end
end
