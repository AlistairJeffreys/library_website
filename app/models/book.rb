class Book < ApplicationRecord
  belongs_to :author
  has_many :book_copies, dependent: :destroy
  default_scope -> { order(created_at: :desc) }
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
