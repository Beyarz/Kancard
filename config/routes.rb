Rails.application.routes.draw do
  root 'auth#index'

  get 'auth/index'
end
