Rails.application.routes.draw do
  devise_for :users

  root 'auth#index'
  get 'auth/index', to: 'auth#index'

  get 'panel/dashboard', to: 'panel#dashboard'
  get 'panel/project', to: 'panel#project'
end
