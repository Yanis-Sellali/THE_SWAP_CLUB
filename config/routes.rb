Rails.application.routes.draw do

  devise_for :users

  root to: "pages#home"

  resources :users, only: [:index, :show, :edit, :update]
  resources :jerseys
  resources :teams, only: [:index, :show] do
    resources :jerseys, only: [:show]
  end

  resources :reviews, only: [:new, :create]

  resources :exchanges, only: [:index, :show, :new, :create] do
    member do
      patch :accept
      patch :refuse
    end

    resource :chat, only: [:show, :create] do
      post :propose_swap, on: :member
      resources :messages, only: [:index, :create]
    end
  end

  resources :messages do
    member do
      post :accept_offer
      post :decline_offer
      post :finalize_offer
    end
  end

  get "trades/:id/recap", to: "trades#recap", as: :recap_trade
  get "/notifications/unread_count", to: "notifications#unread_count"
  get "up" => "rails/health#show", as: :rails_health_check
end
