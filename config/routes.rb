Rails.application.routes.draw do
  resources 'sessions'

  root 'auth#index'
  resources 'auth'

  get 'panel/dashboard'
  get 'panel/project'
end
