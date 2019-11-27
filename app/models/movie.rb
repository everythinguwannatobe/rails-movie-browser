class Movie < ApplicationRecord

  # belongs_to :user
  # belongs_to :watch_list
  has_many :watch_lists
  has_many :users, through: :watch_lists


end
