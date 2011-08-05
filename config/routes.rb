Harpcolumn::Application.routes.draw do

  resources :notebooks

  resources :difficulties

  resources :performances

  resources :pieces
  resources :pictures
  # TODO: This stub functionality was to test the backend- we need better RESTful routing
  match "/pictures/:id/add_user/:user_slug" => "pictures#add_user"
  match "/pictures/:id/del_user/:user_slug" => "pictures#del_user"
  resources :sound_clips
  match "/sound_clips/:id/add_user/:user_slug" => "sound_clips#add_user"
  match "/sound_clips/:id/del_user/:user_slug" => "sound_clips#del_user"
  resources :venues
  devise_for :users
  resources :users
  resources :addresses
  resources :instruments
  resources :manufacturers

  root :to => "home#index"

end
