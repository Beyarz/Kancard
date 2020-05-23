Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'auth#index'
  get 'auth/index'
  get 'auth/login'
  get 'auth/register'

  get 'panel/dashboard'
  get 'panel/project'
end
