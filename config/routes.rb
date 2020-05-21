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
  get '/event-cards' => 'events#event_cards';
end
