Rails.application.routes.draw do
  root 'auth#index'
  # resources :user_session
  # resources :users

  get 'panel/dashboard'
  get 'panel/project'
end
