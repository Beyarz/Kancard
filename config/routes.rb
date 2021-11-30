Rails.application.routes.draw do
  devise_for :users
  root 'auth#index'
  get 'auth/index'

  get 'panel/dashboard'
  get 'panel/project'
end
