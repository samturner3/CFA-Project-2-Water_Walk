Rails.application.routes.draw do
  resources :messages
  resources :conversations
  get 'locations/new'

  get 'locations/directions'

  resources :admin

  resources :conversations do
     end

  resources :suppliers
  resources :locations
  resources :resources

  resources :users

  # resources :admin
  devise_for :users, controllers: {
     sessions: 'users/sessions'
   }
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'locations#index'

end
