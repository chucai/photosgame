Photosgame::Application.routes.draw do
  
  resources :images

  devise_for :users

  root :to => 'photos#index'

end
