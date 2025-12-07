class Post < ApplicationRecord
  validates :title, presence: true, length: { in: 3..40 }
  validates :content, presence: true, length: { in: 5..140 }

  belongs_to :user
  has_many :comments
end
