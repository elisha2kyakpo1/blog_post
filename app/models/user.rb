class User < ApplicationRecord
  has_secure_password
  has_many :posts, foreign_key: :author_id, class_name: 'Post', dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
