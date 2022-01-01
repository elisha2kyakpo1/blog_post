class Post < ApplicationRecord
  has_rich_text :body
  belongs_to :author, class_name: 'User'
  validates :name, presence: true
end
