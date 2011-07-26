Harpcolumn::Application.routes.draw do

  devise_for :users, :path => "users", :path_names => {:registration => "register"}

  root :to => "user#show"
end
