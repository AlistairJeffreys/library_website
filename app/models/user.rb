class User < ApplicationRecord
  has_many :active_relationships, class_name: "Reservation",
                                  foreign_key: "user_id",
                                  dependent: :destroy
  has_many :reserving, through: :active_relationships, source: :book_copy
  
  before_save { email.downcase! }
  validates :name,  presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  validates :library_card_number, presence: true, length: { minimum: 14, maximum: 14}
  
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  # Reserve a book copy
  def reserve(book_copy)
    reserving << book_copy
  end
  
  # Unreserving a book copy
  def unreserve(book_copy)
    reserving.delete(book_copy)
  end
  
  # Returns true if the current user is reserving the book copy
  def reserving?(book_copy)
    reserving.include?(book_copy)
  end
end
