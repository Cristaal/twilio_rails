Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  resources :users, only: :show
  resources :messages
  resources :addresses
end
