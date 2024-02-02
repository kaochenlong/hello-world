# frozen_string_literal: true

Rails.application.routes.draw do
  root 'pages#home'
  resources :books
end
