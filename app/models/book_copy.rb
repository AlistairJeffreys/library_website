class BookCopy < ApplicationRecord
  belongs_to :book
  has_many :passive_relationships, class_name: "Reservation",
                                   foreign_key: "book_copy_id",
                                   dependent: :destroy
  has_many :borrow_relationships, class_name: "Borrow",
                                  foreign_key: "book_copy_id",
                                  dependent: :destroy
  has_many :reservers, through: :passive_relationships, source: :user
  has_many :borrowers, through: :borrow_relationships, source: :user
  
  default_scope -> { order(created_at: :desc) }
  validates :book_id, presence: true
end
