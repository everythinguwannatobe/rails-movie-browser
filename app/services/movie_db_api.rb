class MovieDbService

  # Abstract connection method
  def api_connect
    @conn = Faraday.get('')

  end

  # Get title
  def movie_title

  end

end