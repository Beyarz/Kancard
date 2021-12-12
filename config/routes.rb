Rails.application.routes.draw do
  devise_for :users

  root 'auth#index'
  get 'auth/index', to: 'auth#index'

  resources :boards do
    resources :cards
    resources :notes
    patch 'update_notes', to: 'notes#set_parent_id'
  end
end
