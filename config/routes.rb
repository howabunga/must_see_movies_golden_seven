Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })

  #Movies
  get("/movies/new_form", { :controller => "movies", :action => "new_movie" })
  get("/movies/create_movie", { :controller => "movies", :action => "create_movie" })

  get("/movies", { :controller => "movies", :action => "movie" })
  get("/movies/:id", { :controller => "movies", :action => "show_movie" })

  get("/movies/:id/edit_form", { :controller => "movies", :action => "edit_movie" })
  get("/update_movies/:id", { :controller => "movies", :action => "update_movie" })

  get("/delete_movies/:id", { :controller => "movies", :action => "destroy_movie" })

#Directors
  get("/directors/new_form", { :controller => "directors", :action => "new_director" })
  get("/directors/create_director", { :controller => "directors", :action => "create_director" })

  get("/directors", { :controller => "directors", :action => "director" })
  get("/directors/:id", { :controller => "directors", :action => "show_director" })

  get("/directors/:id/edit_form", { :controller => "directors", :action => "edit_director" })
  get("/update_directors/:id", { :controller => "directors", :action => "update_director" })

  get("/delete_directors/:id", { :controller => "directors", :action => "destroy_director" })

#Actors
  get("/actors/new_form", { :controller => "actors", :action => "new_actor" })
  get("/actors/create_actor", { :controller => "actors", :action => "create_actor" })

  get("/actors", { :controller => "actors", :action => "actor" })
  get("/actors/:id", { :controller => "actors", :action => "show_actor" })

  get("/actors/:id/edit_form", { :controller => "actors", :action => "edit_actor" })
  get("/update_actors/:id", { :controller => "actors", :action => "update_actor" })

  get("/delete_actors/:id", { :controller => "actors", :action => "destroy_actor" })

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
