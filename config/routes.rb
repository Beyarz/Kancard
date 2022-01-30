Rails.application.routes.draw do
  devise_for :users

  root to: 'auth#index'
  get 'auth/index', to: 'auth#index'

  resources :boards do
    resources :cards, only: [:create, :destroy]
    resources :messages, only: [:create]
    resources :notes, only: [:create, :destroy] do
      patch :move
    end
  end
end
