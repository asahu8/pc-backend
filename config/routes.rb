Rails.application.routes.draw do
  get 'challenges/list'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

get 'personal-challenges/admin/config/instance/employer/key/:castlight' => 'challenges#instances'
get 'personal-challenges/admin/config/instance/1234' => 'challenges#get_instance'
  # get 'personal-challenges/admin/config/instances' => 'challenges#instances'
  get 'api/personal-challenges/instance/:id' => 'challenges#specific_pc' #, via: :options
  get 'personal-challenges/catalogue' => 'challenges#pc_listing'
  get 'personal-challenges/enrolled-cards' => 'challenges#carousel' #, via: :options
  get '/personal-challenges/progress/summary' => 'challenges#progress'
  post '/user-activity' => 'challenges#user_activity'
  get '/enrollment/eligible' => 'challenges#is_eligible'

  get '/events' => 'events#index'

  # http://localhost:8080/api/personal-challenges/enrollment/eligible?personalChallengeInstanceGuid=ea8f0cb4-d5b0-4f92-8da6-e8a92e781fc4&timeZone=%2B05%3A30


=begin
  To get a specific PC : https://personal-challenges-ui-service.densignoff08.kube.ch.int/ui/user/personal-challenge/instance/e17d23e4-1563-4c85-be4c-8f4af0e0828f
Catelogue : https://personal-challenges-ui-service.densignoff08.kube.ch.int/ui/user/personal-challenge/catalogue
Enrolled Cards : https://personal-challenges-ui-service.densignoff08.kube.ch.int/ui/user/personal-challenge/enrolled-cards
=end


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
