Rails.application.routes.draw do
  resources :movies
  root 'welcome#index'

end
