Harpcolumn::Application.routes.draw do

  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments
  resources :assets
  resources :manufacturers

  root :to => "users#show"

end
