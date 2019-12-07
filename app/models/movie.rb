class Movie < ApplicationRecord
  has_many :watch_lists
  has_many :user, through: :watch_lists

  accepts_nested_attributes_for :watch_lists

  scope :voting, -> { order(average_vote: :desc) }
  scope :title, -> { order(title: :asc) }

end
