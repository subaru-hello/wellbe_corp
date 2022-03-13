# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'homes#index'
  get '*path', to: 'homes#index'
end
