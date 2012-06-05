Photosgame::Application.routes.draw do
  


  resources :albums  do
    resources :images
  end
  
  devise_for :users

  match "/:token" => "photos#index"
  

  root :to => 'welcome#index'

end
