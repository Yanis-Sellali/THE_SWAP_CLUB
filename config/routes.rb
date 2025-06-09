Rails.application.routes.draw do
  devise_for :users
  get 'messages/create'
  get 'chats/show'
  get 'exchanges/index'
  get 'exchanges/show'
  get 'exchanges/new'
  get 'exchanges/create'
  get 'teams/index'
  get 'teams/show'
  get 'teams/new'
  get 'teams/create'
  get 'teams/edit'
  get 'teams/update'
  get 'teams/destroy'
  get 'jerseys/index'
  get 'jerseys/show'
  get 'jerseys/new'
  get 'jerseys/create'
  get 'jerseys/edit'
  get 'jerseys/update'
  get 'jerseys/destroy'
  get 'users/show'
  get 'users/index'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
