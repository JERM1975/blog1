class Post < ApplicationRecord
  belongs_to :blog
  validates :title, :content, presence: true
  validates :title, length: { minimum: 7 }
  has_many :messages, dependent: :destroy
end
