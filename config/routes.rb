Photosgame::Application.routes.draw do
  


  resources :albums  do
    resources :images
  end
  

  match "/:token" => "photos#index"
  
  devise_for :users

  root :to => 'welcome#index'

end
