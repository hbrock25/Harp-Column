Harpcolumn::Application.routes.draw do

  resources :composition_dates

  resources :pieces

  resources :instrument_types

  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments
  resources :manufacturers

  root :to => "users#show"

end
