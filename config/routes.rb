Rails.application.routes.draw do

  get 'songs', to: 'song#index', as: 'songs'
  get 'songs/new', to: 'song#new', as: 'new_song'
  get 'songs/:id/edit', to: 'song#edit', as: 'edit_song'
  get 'songs/:id', to: 'song#show', as: 'song'

  post 'songs', to: 'song#create'
  patch 'songs/:id', to: 'song#update'
  delete 'songs/:id', to: 'song#delete'

  get 'genres', to: 'genre#index', as: 'genres' # find out later why leaving this out leads to the error of a frozen array
  get 'genres/new', to: 'genre#new', as: 'new_genre'
  get 'genres/:id/edit', to: 'genre#edit', as: 'edit_genre'
  get 'genres/:id', to: 'genre#show', as: 'genre'

  post 'genres', to: 'genre#create'
  patch 'genres/:id', to: 'genre#update'
  delete 'genres/:id', to: 'genre#delete'

  get 'artists', to: 'artist#index'
  get 'artists/new', to: 'artist#new', as: 'new_artist'
  get 'artists/:id/edit', to: 'artist#edit', as: 'edit_artist'
  get 'artists/:id', to: 'artist#show', as: 'artist'

  post 'artists', to: 'artist#create'
  patch 'artists/:id', to: 'artist#update'
  delete 'artists/:id', to: 'artist#delete'

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
