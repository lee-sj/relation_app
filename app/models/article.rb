class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 3, maximum: 100}
  validates :content, presence: true, length: { minimum: 2 }
end
