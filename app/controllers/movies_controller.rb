require 'pry'

class MoviesController < ApplicationController

  def movie_popular(page)
    JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{ENV["MOVIE_API"]}&page=#{page.to_s}"))

  end

  def index
    @movies = movie_popular(2)

    render 'movies/index'
  end

  def edit

  end

  def show

  end

end
