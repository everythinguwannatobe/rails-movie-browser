Rails.application.routes.draw do

  #get 'users/show'
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :users, only: %i[show index] do
    resources :watch_lists
  end

  resources :movies

  root 'movies#index'

end
