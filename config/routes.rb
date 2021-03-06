Floorsys::Application.routes.draw do|map|
  
  

  resources :add_to_groups

    map.connect '/groups/:id/delete', :controller=>'groups', :action=>'destroy'
    
      match '/move_to'  => 'groups#move_to' ,:via => :post
   
    resources :groups




  resources :sale_orders

  map.connect '/sale_estimates/:id/remove_basket_item', :controller=>'sale_estimates', :action=>'remove_basket_item'
  map.connect '/sale_estimates/:id/delete', :controller=>'sale_estimates', :action=>'destroy'
  resources :sale_estimates do
    member do
      get 'invoice_pdf'
      put 'add_basket_item'
      put 'add_purchase_order_item'
      delete 'remove_purchase_order_item'
    end
  end

  
  map.connect '/purchase_orders/:id/toggle_order_invoiced_status', :controller=>'purchase_orders', :action=>'toggle_order_invoiced_status'
  map.connect '/purchase_orders/:id/remove_basket_item', :controller=>'purchase_orders', :action=>'remove_basket_item'
  map.connect '/purchase_orders/:id/remove_purchase_order_item/:id2', :controller=>'purchase_orders', :action=>'remove_purchase_order_item'
  map.connect '/purchase_orders/:id/delete', :controller=>'purchase_orders', :action=>'destroy'
  map.connect '/purchase_invoices', :controller=>'purchase_orders', :action=>'invoice'
  
  resources :purchase_orders do
    member do
      get 'invoice_pdf'
      put 'add_basket_item'
      put 'add_purchase_order_item'
      delete 'remove_basket_item'
      delete 'remove_purchase_order_item'
    end
  end
  
  map.connect '/quotations/:id/delete', :controller=>'quotations', :action=>'destroy'
  resources :quotations
  
  map.connect '/product_req_plannings/:id/delete', :controller=>'product_req_plannings', :action=>'destroy'
  resources :product_req_plannings

  map.connect '/products/:id/delete', :controller=>'products', :action=>'destroy'
  resources :products

  map.connect '/product_style_types/:id/delete', :controller=>'product_style_types', :action=>'destroy'
  resources :product_style_types

  map.connect '/product_wears/:id/delete', :controller=>'product_wears', :action=>'destroy'
  resources :product_wears

  map.connect '/product_backings/:id/delete', :controller=>'product_backings', :action=>'destroy'
  resources :product_backings

  map.connect '/product_fibres/:id/delete', :controller=>'product_fibres', :action=>'destroy'
  resources :product_fibres

  map.connect '/product_groups/:id/delete', :controller=>'product_groups', :action=>'destroy'
  resources :product_groups

  map.connect '/product_types/:id/delete', :controller=>'product_types', :action=>'destroy'
  resources :product_types

  map.connect '/suppliers/:id/delete', :controller=>'suppliers', :action=>'destroy'
  resources :suppliers

  map.connect '/sale_representatives/:id/delete', :controller=>'sale_representatives', :action=>'destroy'
  resources :sale_representatives

  map.connect '/subcontractors/:id/delete', :controller=>'subcontractors', :action=>'destroy'
  resources :subcontractors

  map.connect '/prospects/:id/delete', :controller=>'prospects', :action=>'destroy'
  resources :prospects

  map.connect '/customers/:id/make_as_prospect', :controller=>'customers', :action=>'make_as_prospect'
  map.connect '/customers/:id/delete', :controller=>'customers', :action=>'destroy'
  resources :customers

  map.connect '/contacts/:id/delete', :controller=>'contacts', :action=>'destroy'

  
  resources :contacts do
    get :restore, :on => :collection
    get :import, :on => :collection 
    get :search, :on => :collection
    put :complete, :on => :collection
    post :csv_import ,:on => :collection
    resources :sub_contacts
    resources :notes
    resources :credit_controls
    match '/sub_contacts/:id/delete', :to => "sub_contacts#destroy"
    match '/credit_controls/:id/delete', :to => "credit_controls#destroy"
    match '/notes/:id/delete', :to => "notes#destroy"
  end
      
      

      
      match '/contacts/:id/status', :to => "contacts#toggled_status"
      

      
      
      
 


  resources :contacts
  
  
  map.connect '/stocks/:id/delete', :controller=>'stocks', :action=>'destroy'
  resources :stocks
  
  map.connect '/defective_products/:id/delete', :controller=>'defective_products', :action=>'destroy'
  resources :defective_products

  
  map.connect '/vats/company.id/delete', :controller=>'vats', :action=>'destroy'
  map.connect '/users/:id/delete', :controller=>'users', :action=>'destroy'
  map.connect '/companies/:id/delete', :controller=>'companies', :action=>'destroy'
  map.connect '/sales_types/:id/delete', :controller=>'sales_types', :action=>'destroy'
  map.connect '/outgoing_types/company.id/delete', :controller=>'outgoing_types', :action=>'destroy'
  

  resources :outgoing_types

  resources :sales_types

  resources :vats
  
  map.connect '/categories/:id/delete', :controller=>'categories', :action=>'destroy'
  resources :categories

  resources :companies
  
   

  resources :groups
  map.connect '/stocks/find', :controller=>'stocks', :action=>'find'
  map.connect '/defective_products/find1', :controller=>'defective_products', :action=>'find1'
 






  devise_for :users
  resources :users

  root :to => "home#index"
  match 'dashboard' => 'dashboards#dashboard', :as => 'user_root'
  
end
