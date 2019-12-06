class WatchList < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  accepts_nested_attributes_for :movie
end
