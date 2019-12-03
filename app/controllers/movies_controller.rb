require 'pry'

class MoviesController < ApplicationController
  include MoviesHelper

  def index
    movie_popular(1)
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

end
