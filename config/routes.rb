# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'homes#index'
  namespace :api do
    namespace :v1 do
      resources :crues, only: %i[index]
      resources :competitions, only: %i[index]
      resources :records, only: %i[index]
    end
  end
  get '*path', to: 'homes#index'
end
