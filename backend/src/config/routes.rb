Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "authentication/login"
      get "authentication/logout"

      post '/login', to: 'authentication#login'
      post '/logout', to: 'authentication#logout'

      
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
    end
  end
end
