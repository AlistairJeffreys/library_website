class Reservation < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :book_copy, class_name: "BookCopy"
  
  validates :user_id, presence: true
  validates :book_copy_id, presence: true
end
