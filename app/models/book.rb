class Book < ApplicationRecord
  has_many :book_copies, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates :isbn, presence: true, length: { maximum: 13, minimum: 10}, uniqueness: true
  validates :title, presence: true
  validate :picture_size 
  
  private
  
  # Validates the size of an uploaded picture.
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
  
end
