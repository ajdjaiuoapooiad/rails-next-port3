class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { maximum: 1000 }
  validates :post_type, presence: true, inclusion: { in: %w(text image video) }
end
