Harpcolumn::Application.routes.draw do

  resources :difficulties

  resources :performances

  resources :pieces
  resources :pictures
  match "/pictures/:id/add_user/:user_slug" => "pictures#add_user"
  match "/pictures/:id/del_user/:user_slug" => "pictures#del_user"
  resources :sound_clips
  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments
  resources :manufacturers

  root :to => "home#index"

end
