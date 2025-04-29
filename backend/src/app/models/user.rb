class User < ApplicationRecord
    has_secure_password # パスワードを安全に扱うための機能
    validates :email, presence: true, uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "は有効なメールアドレスではありません" }
    validates :password, presence: true, length: { minimum: 8 }, on: :create
    validates :username, presence: true, uniqueness: true
    validates :display_name, presence: true, length: { maximum: 50 }
  end
  