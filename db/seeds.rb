# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#5.times do
#  User.create(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
#end

# Create Watch List
# WatchList.new(movie_id: "10", user_id: "1" )

# Seed 20 movies
movie_seed = JSON.parse(RestClient.get("https://api.themoviedb.org/3/movie/popular?api_key=#{ENV['MOVIE_API']}&page=1"))
movie_seed['results'].each do |movie|
  Movie.create(
    movie_id: movie['id'],
    title: movie['title'],
    release_date: movie['release_date'],
    poster_path: movie['poster_path'],
    backdrop_path: movie['backdrop_path'],
    overview: movie['overview'],
    average_vote: movie['vote_average']
  )
end




