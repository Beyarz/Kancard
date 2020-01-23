Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'

  get 'auth/login'
  get 'auth/register'
end
