module MoviesHelper

  def movie_popular(page)
    data = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['MOVIE_API']}&page=#{page.to_s}"))
    data['results'].each do |movie|
      existing_movies = Movie.find_by(movie_id: movie['id'])
      next if existing_movies

      new_movie = Movie.new do |m|
        puts movie['id']
        m.movie_id = movie['id']
        m.title = movie['title']
        m.release_date = movie['release_date']
        m.poster_path = movie['poster_path']
        m.backdrop_path = movie['backdrop_path']
        m.overview = movie['overview']
        m.average_vote = movie['vote_average']
      end
      new_movie.save
    end
  end
end
