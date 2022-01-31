Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'auth#index'
  get 'auth/index', to: 'auth#index'

  resources :boards do
    resources :cards, only: [:create, :destroy]
    resources :messages, only: [:create, :destroy]
    resources :notes, only: [:create, :destroy] do
      patch :move
    end
  end
end
