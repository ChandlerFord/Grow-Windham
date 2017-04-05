Rails.application.routes.draw do
  resources :resources
  resources :resource_transactions
  resources :resource_types
  resources :tool_names
  resources :organizational_primary_roles
  devise_for :users
  resources :user_roles
  resources :users
  resources :sub_organizations
  resources :programs
  resources :produce_givens
  resources :persont_types
  resources :people_person_types
  resources :people_organizations
  resources :people do
    collection {post :import}
  end
  resources :organization_types
  resources :organizations
  resources :how_givens
  resources :grades
  resources :garden_inventories
  resources :garden_crops
  resources :gardens
  resources :event_types
  resources :events_people
  resources :events
  resources :event_roles
  resources :email_list_type_people
  resources :email_list_types
  resources :crop_names

  get 'pages/totalsreport'=> 'pages#totalsreport', as: 'totals'
  get 'pages/accessdenied'=> 'pages#accessdenied', as: 'accessdenied'
  
  get 'pages/about_us'=> 'pages#about_us', as: 'about'
  root 'pages#index'
  
  mount Adhoq::Engine => "/adhoq"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


#Redirect user if signed in or not
#devise_scope :user do
#  authenticated :user do
#    root 'crop_names#new', as: :authenticated_root
#  end

#  unauthenticated do
#    root 'devise/sessions#new', as: :unauthenticated_root
#  end
#end


# You can have the root of your site routed with "root"


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
