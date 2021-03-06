Rails.application.routes.draw do
  
  delete 'like/:id' => 'likes#destroy', as: 'like'
  
  post 'likes' => 'likes#create', as: 'likes'
  
  post 'relationships' => 'relationships#create', as: 'relationships'
  
  delete 'relationship/:id' => 'relationships#destroy', as: 'relationship'
  
  get 'users' => 'users#index', as: 'users'

  get 'user/:id' => 'users#show', as: 'user'

  devise_for :users
  
  root 'tweets#index'
  
  resources :tweets
  
  #get 'tweets' => 'tweets#index'
  #get 'tweet/:id' => 'tweets#show', as: 'tweet'
  #get 'tweets/new', as: 'new_tweet'
  #get 'tweets/:id/edit' => 'tweets#edit', as: 'edit_tweet'
  #post 'tweets' => 'tweets#create'
  #patch 'tweet/:id' => 'tweets#update'
  #delete 'tweet/:id' => 'tweets#destroy'

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
