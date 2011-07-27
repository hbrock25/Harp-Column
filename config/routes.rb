Harpcolumn::Application.routes.draw do

  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments

  resources :assets

  resources :manufacturers

  devise_for :users, :path => "users", :path_names => {:registration => "register"}


  root :to => "users#show"

end
