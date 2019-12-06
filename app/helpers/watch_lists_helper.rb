require 'pry'

module WatchListsHelper

  def add_movie
    if user_signed_in? && current_user
      mode = '4'
      binding.pry
    end
  end
end
