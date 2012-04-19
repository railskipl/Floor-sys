Floorsys::Application.routes.draw do
  

  resources :outgoing_types

  resources :sales_types

  resources :vats
  resources :categories

  resources :companies

  devise_for :users
  resources :users

  root :to => "home#index"
  match 'dashboard' => 'users#dashboard', :as => 'user_root'
  
end
