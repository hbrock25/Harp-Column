Harpcolumn::Application.routes.draw do

  resources :instruments

  resources :assets

  resources :manufacturers

  devise_for :users, :path => "users", :path_names => {:registration => "register"}

  root :to => "user#show"
end
