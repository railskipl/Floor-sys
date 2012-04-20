Floorsys::Application.routes.draw do|map|
  
  resources :contacts

  map.connect '/vats/company.id/delete', :controller=>'vats', :action=>'destroy'
  map.connect '/users/:id/delete', :controller=>'users', :action=>'destroy'
  map.connect '/companies/:id/delete', :controller=>'companies', :action=>'destroy'
  

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
