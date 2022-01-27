Rails.application.routes.draw do
  devise_for :users

  root to: 'auth#index'
  get 'auth/index', to: 'auth#index'

  resources :boards do
    resources :cards
    resources :messages
    resources :notes do
      patch :move
    end
  end

end
