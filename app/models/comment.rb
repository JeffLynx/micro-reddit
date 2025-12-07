class Comment < ApplicationRecord
  validates :content, presence: true
  validates :user_id
  validates :post_id
  belongs_to :post
  belongs_to :user
end
