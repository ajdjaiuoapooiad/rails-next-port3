Rails.application.routes.draw do
  # resources メソッドを使うと、よく使うルーティングをまとめて設定できる
  resources :users
  resources :posts
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:create, :destroy]
  resources :follows, only: [:create, :destroy]
  resources :conversations
  resources :conversation_users, only: [:create, :destroy]
  resources :messages
  resources :notifications

  # ルーティングを個別に設定する場合
  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show'
  # post 'users', to: 'users#create'
  # ...
end