Rails.application.routes.draw do
  resources :user_session
  resources :users

  get 'panel/dashboard'
  get 'panel/project'
end
