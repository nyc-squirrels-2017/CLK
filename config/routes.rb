Rails.application.routes.draw do
  resources :users, only: [:index, :new, :create, :show]
  resources :comments
  resources :posts
  resources :likes, only: [:create, :destroy]
  resources :friendships, only: [:create, :destroy]
  resources :requests, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  root "sessions#new"
end
