Rails.application.routes.draw do
  root 'auth#index'

  get 'auth/index'
  get 'auth/login'
  get 'auth/register'
end
