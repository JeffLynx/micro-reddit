class User < ApplicationRecord
  validates :user_name, length: { in: 3..12 }, presence: true, uniqueness: true
  validates :email, presence: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
