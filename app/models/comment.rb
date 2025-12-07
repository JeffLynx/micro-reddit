class Comment < ApplicationRecord
  validates :content, presence: true
  validates :user_id, numericality: true
  validates :post_id, numericality: true
  belongs_to :post
  belongs_to :user
end
