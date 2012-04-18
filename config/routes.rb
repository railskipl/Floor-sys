Floorsys::Application.routes.draw do
  

  resources :vats

  resources :companies

  devise_for :users
  resources :users

  root :to => "home#index"
  match 'dashboard' => 'users#dashboard', :as => 'user_root'
  
end
