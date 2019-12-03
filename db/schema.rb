# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_21_161320) do

  create_table "movies", force: :cascade do |t|
    t.string "movie_id"
    t.string "title"
    t.string "release_date"
    t.text "poster_path"
    t.text "backdrop_path"
    t.text "overview"
    t.float "average_vote"
    t.integer "budget"
    t.text "tagline"
    t.integer "runtime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watch_lists", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "movie_id", null: false
    t.text "comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_watch_lists_on_movie_id"
    t.index ["user_id"], name: "index_watch_lists_on_user_id"
  end

  add_foreign_key "watch_lists", "movies"
  add_foreign_key "watch_lists", "users"
end
