Rails.application.routes.draw do
  get 'user_sessions/new'
  get 'user_sessions/create'
  get 'user_sessions/destroy'


  resources :home, only: [:index]

  root :to => 'home#index'
  resources :user_sessions
  resources :users
  resources :turns
  resources :resources

  # get to:'home#indexadmin'

  get :index_admin, to: 'home#index_admin'

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
