class WelcomeController < ApplicationController

  def movie_popular(page)
    @movie = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['MOVIE_API']}&page=#{page.to_s}"))
  end

  def index
    @movies = movie_popular(1)

    render 'movies/index'
  end

end
