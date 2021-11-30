Rails.application.routes.draw do
  root 'auth#index'
  get 'panel/dashboard'
  get 'panel/project'
end
