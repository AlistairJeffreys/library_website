class BookCopy < ApplicationRecord
  belongs_to :book
  default_scope -> { order(created_at: :desc) }
  validates :book_id, presence: true
end
