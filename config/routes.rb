AlingnenaApp::Application.routes.draw do

  resources :line_items

  resources :suppliers

  resources :purchases do
    resource :invoice
    resources :line_items
  end

  resources :debts
  
  #Le següents linees:
  #match 'products' => 'products#index', :via => :get, :as => 'products'
  #match 'products' => 'products#create', :via => :post
  #match 'products/new' => 'products#new', :via => :get, :as => 'new_product'
  #match 'products/search' => 'products#search', :via => :get, :as => 'search_products'
  #match 'products/:id' => 'products#show', :via => :get, :as => 'product'
  #match 'products/:id' => 'products#destroy', :via => :delete
  #match 'products/:id' => 'products#update', :via => :put
  #match 'products/:id/edit' => 'products#edit', :via => :get, :as => 'edit_product'
  #
  #es poden substituir per:
  
  resources :products do
    collection do
      get 'search'
    end
  end
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
