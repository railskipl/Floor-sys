Floorsys::Application.routes.draw do|map|
  
  map.connect '/subcontractors/:id/delete', :controller=>'subcontractors', :action=>'destroy'
  resources :subcontractors

  map.connect '/prospects/:id/delete', :controller=>'prospects', :action=>'destroy'
  resources :prospects

  map.connect '/customers/:id/delete', :controller=>'customers', :action=>'destroy'
  resources :customers

  resources :contacts

  
  map.connect '/vats/company.id/delete', :controller=>'vats', :action=>'destroy'
  map.connect '/users/:id/delete', :controller=>'users', :action=>'destroy'
  map.connect '/companies/:id/delete', :controller=>'companies', :action=>'destroy'
  map.connect '/sales_types/company.id/delete', :controller=>'sales_types', :action=>'destroy'
  map.connect '/outgoing_types/company.id/delete', :controller=>'outgoing_types', :action=>'destroy'
  

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
