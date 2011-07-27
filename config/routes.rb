Harpcolumn::Application.routes.draw do

  resources :venues

  devise_for :users, :path => "users", :path_names => {:registration => "register"}

  resources :users
  resources :addresses

  root :to => "user#show"

end
