require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  
  def setup
    @reservation = Reservation.new(user_id: users(:kate).id,
                                   book_copy_id: book_copies(:book_copy_one).id)
  end
  
  test "should be valid" do
    assert @reservation.valid?
  end
  
  test "should require a user_id" do
    @reservation.user_id = nil
    assert_not @reservation.valid?
  end
  
  test "should require a book_copy_id" do
    @reservation.book_copy_id = nil
    assert_not @reservation.valid?
  end
  
end
