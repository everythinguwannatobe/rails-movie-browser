require 'pry'

class MoviesController < ApplicationController
  include MoviesHelper

  def index
    @movies = movie_popular(1)
    render 'index'
  end

  def show
  end

end
