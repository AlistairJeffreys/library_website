require 'test_helper'

class BookCopyTest < ActiveSupport::TestCase
  
  def setup
    @book = books(:book_one)
    # This code is not idiomatically correct.
    @book_copy = @book.book_copies.build
  end
  
  test "should be valid" do
    assert @book_copy.valid?
  end
  
  test "book id should be present" do
    @book_copy.book_id = nil
    assert_not @book_copy.valid?
  end
  
  test "order should be most recent first" do
    assert_equal book_copies(:most_recent), BookCopy.first
  end
  
  test "associated book copies should be destroyed" do
    @book.save
    @book.book_copies.create!
    assert_difference 'BookCopy.count', -36 do
      @book.destroy
    end
  end
end
