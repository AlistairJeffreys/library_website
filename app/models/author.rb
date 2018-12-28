class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true, length: { maximum: 50 }
end
