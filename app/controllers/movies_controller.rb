require 'pry'

class MoviesController < ApplicationController
  include MoviesHelper

  def index
    movie_popular(1)
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    loc_movie = @movie.movie_id
    movie_detail(loc_movie)
  end

end
