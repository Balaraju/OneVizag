Rails.application.routes.draw do

<<<<<<< HEAD
root to: "home#index"
=======
>>>>>>> c2007a75c6c6dd937f84a36892f5bacd8b8453ec

  #get 'home/index'

#  root 'home#view'


<<<<<<< HEAD
  

devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  

=======
>>>>>>> c2007a75c6c6dd937f84a36892f5bacd8b8453ec

  resources :products

  
  get 'home/index'
<<<<<<< HEAD
  get 'home/products_view' => 'home#products_view', as: :home_products_view
 # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

=======
  get 'home/products_view'
devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
 
  root to: "home#index"
>>>>>>> c2007a75c6c6dd937f84a36892f5bacd8b8453ec

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
