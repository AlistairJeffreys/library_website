require 'test_helper'

class BorrowTest < ActiveSupport::TestCase
  
  def setup
    @borrow = Borrow.new(user_id: users(:kate).id,
                         book_copy_id: book_copies(:book_copy_one).id)
  end
  
  test "should be valid" do
    assert @borrow.valid?
  end
  
  test "should require a user_id" do
    @borrow.user_id = nil
    assert_not @borrow.valid?
  end
  
  test "should require a book_copy_id" do
    @borrow.book_copy_id = nil
    assert_not @borrow.valid?
  end
  
  test "should borrow and unborrow a book copy" do
    kate = users(:kate)
    book_copy_one = book_copies(:book_copy_one)
    assert_not kate.borrowing?(book_copy_one)
    kate.borrow(book_copy_one)
    assert kate.borrowing?(book_copy_one)
    assert book_copy_one.borrowers.include?(kate)
    kate.unborrow(book_copy_one)
    assert_not kate.borrowing?(book_copy_one)
  end
end
