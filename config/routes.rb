Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"

  resources :users, only: [:index, :show, :edit, :update]
  resources :jerseys
  resources :teams, only: [:index, :show]

  resources :exchanges, only: [:index, :show, :new, :create] do
    member do
      patch :accept
      patch :refuse
    end

    resource :chat, only: [:show, :create] do
      resources :messages, only: [:index, :create]
    end
  end

  resources :teams do
    resources :jerseys, only: [:show]
  end

  get '/notifications/unread_count', to: 'notifications#unread_count'

  get "up" => "rails/health#show", as: :rails_health_check
end
