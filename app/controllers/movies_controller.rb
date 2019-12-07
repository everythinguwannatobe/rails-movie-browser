require 'pry'

class MoviesController < ApplicationController
  include MoviesHelper

  def index
    movie_popular(1)
    @movies = Movie.all
    @movies_vote = Movie.all.voting
  end

  def show
    @movie = Movie.find(params[:id])
    loc_movie = @movie.movie_id
    movie_detail(loc_movie)
  end

  def votes
    @movies = Movie.all.voting
  end

  def title
    @movies = Movie.all.title
  end

end
