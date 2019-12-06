class Movie < ApplicationRecord
  has_many :watch_lists
  has_many :user, through: :watch_lists

  accepts_nested_attributes_for :watch_lists

  # default_scope { order(title: :asc) }

end
