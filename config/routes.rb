Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/edit'
  get 'watch_lists/index'
  get 'watch_lists/show'
  get 'watch_lists/edit'
  get 'watch_lists/delete'
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :movies
  root 'movies#index'

end
