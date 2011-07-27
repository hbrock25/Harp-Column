Harpcolumn::Application.routes.draw do

  resources :venues
  devise_for :users
  resources :users
  resources :addresses


  root :to => "users#show"

end
