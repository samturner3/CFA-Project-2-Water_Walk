Rails.application.routes.draw do
  get 'locations/new'

  get 'locations/directions'

  resources :admin


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
