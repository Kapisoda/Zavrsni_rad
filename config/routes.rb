Rails.application.routes.draw do
  get 'contact_forms/new'

  get 'contact_forms/create'

  get 'comments/index'

  get 'comments/show'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/destroy'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/new'

  get 'users/create'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  get 'users/edit'

  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/create'

  get 'posts/update'

  get 'posts/destroy'

  get 'posts/edit'

  get 'categories/index'

  get 'categories/show'

  get 'categories/new'

  get 'categories/create'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/edit'



  devise_for :users, controllers: { registrations: "users/registrations"}
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'home/index'
  get 'home/about'
  get 'home/contact'
  get 'home/login'


  resources :posts
  resources :users
  resources :categories
  resources :comments
  resources :contact_forms


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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