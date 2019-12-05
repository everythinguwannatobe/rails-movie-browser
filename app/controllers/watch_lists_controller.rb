require 'pry'

class WatchListsController < ApplicationController

  include WatchListsHelper

  def index
    add_movie
    my_id = current_user[:id]
    my_list = WatchList.find_by(params[:user_id])
    binding.pry
    @watch_lists = WatchList.all
  end

  def show

  end

  def edit
  end

  def delete
  end

end
