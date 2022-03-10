# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }

  root to: "auth#index"
  get "auth/index", to: "auth#index"

  resources :boards do
    resources :cards, only: %i[create destroy]
    resources :messages, only: %i[create destroy]
    resources :notes, only: %i[create destroy] do
      patch :move
    end
  end
end
