Harpcolumn::Application.routes.draw do

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users, :path => "users", :path_names => {:registration => "register"}

  root :to => "user#show"
end
