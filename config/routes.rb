Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })

  get("/directors/new_form", { :controller => "movies", :action => "new_director" })
  get("/directors/create_director", { :controller => "movies", :action => "create_director" })

  get("/directors", { :controller => "movies", :action => "director" })
  get("/directors/:id", { :controller => "movies", :action => "show_director" })

  get("/directors/:id/edit_form", { :controller => "movies", :action => "edit_director" })
  get("/update_directors/:id", { :controller => "movies", :action => "update_director" })

  get("/delete_directors/:id", { :controller => "movies", :action => "destroy_director" })



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
