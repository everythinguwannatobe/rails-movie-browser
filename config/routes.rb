Rails.application.routes.draw do

  # get 'users/show'
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # Redirect login to root_path
  namespace :users do
    redirect to: 'movie#index'
  end

  root 'movies#index'

  resources :users, only: %i[show index] do
    resources :watch_lists
  end
  resources :watch_lists

  resources :movies

end
