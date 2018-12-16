class Book < ApplicationRecord
  validates :isbn, presence: true, length: { maximum: 13, minimum: 10}, uniqueness: true
  validates :title, presence: true
  
end
