# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    resources :lists, only: %i[index show create update destroy] do
      resources :tasks, shallow: true, only: %i[create update toggle destroy]
    end
    post 'tasks/:id/toggle', to: 'tasks#toggle'
  end
end
