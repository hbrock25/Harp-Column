Harpcolumn::Application.routes.draw do

  resources :difficulties

  resources :performances

  resources :pieces

  resources :instrument_types

  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments
  resources :manufacturers

  root :to => "home#index"

end
