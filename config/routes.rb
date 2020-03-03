# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :users, only: %i[create]
    post 'users/token', to: 'users#token'
    resources :lists, only: %i[index show create update destroy] do
      resources :tasks, only: %i[create]
    end
    resources :tasks, only: %i[update destroy]
    post 'tasks/:id/toggle', to: 'tasks#toggle'
  end
end
