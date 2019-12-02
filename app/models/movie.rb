class Movie < ApplicationRecord
  has_many :watch_lists
  has_many :user, through: :watch_lists

end
