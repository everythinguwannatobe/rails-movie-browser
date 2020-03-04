class WatchListsController < ApplicationController
  skip_before_action :verify_authenticity_token
  include MoviesHelper

  def index
    @user_list = WatchList.where(user_id: current_user[:id])
  end

  def show
    @movie = Movie.find(params[:id])
    loc_movie = @movie.movie_id
    movie_detail(loc_movie)
  end

  def edit
    @movie = Movie.find(params[:id])
    @watch_list = WatchList.find_by_movie_id(params[:id])
    if @watch_list.nil?
      @watch_list = WatchList.new do |m|
        m.user_id = current_user['id']
        m.movie_id = @movie['id']
        m.movie_title = @movie['title']
        m.poster_path = @movie['poster_path']
      end
      @watch_list.save!
      flash[:notice] = 'Your selection has been added to your watchlist.'
    end
  end

  def update
    @watch_list = WatchList.find(params[:id])
    if @watch_list.update(watch_list_params)
      redirect_to user_watch_lists_path(current_user), notice: 'Your comment has been saved to your watchlist.'
    end
  end

  def destroy
    @watch_list = WatchList.find_by_movie_id(params[:id])
    @watch_list.destroy
    redirect_to watch_lists_path
    flash[:notice] = 'Your movie has been deleted from your watchlist.'
  end

  private

  def watch_list_params
    params.require(:watch_list).permit(
      :user_id,
      :movie_id,
      :movie_title,
      :poster_path,
      :comments
    )
  end

end
