Rails.application.routes.draw do
  devise_for :users

  root 'auth#index'
  get 'auth/index', to: 'auth#index'

  resources :boards do
    resources :cards
  end
end
