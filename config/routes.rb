JamSession::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  post '/sessions/login' => 'sessions#login'
  get '/sessions/logout' => 'sessions#logout', :as => 'logout'
  get '/jam_seshes/:id' => 'jam_seshes#reply', :as => 'reply'
  post '/jam_seshes/create' => 'jam_seshes#create', :as => 'jam_seshes'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :users do
    resources :user_instruments
  end


  get '/:neighborhood/:instrument' => 'neighborhoods#instruments', :as => 'instruments'
  get '/:neighborhood' => 'neighborhoods#show', :as => 'neighborhood'
  # get '/hyde-park' => 'neighborhoods#show'
  # get '/south-loop' => 'neighborhoods#show'
  # get '/lakeview' => 'neighborhoods#show'
  # get '/bucktown' => 'neighborhoods#show'
  # get '/rogers-park' => 'neighborhoods#show'
  # get '/river-north' => 'neighborhoods#show'

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
