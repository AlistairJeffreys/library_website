require 'test_helper'

class BookTest < ActiveSupport::TestCase
  
  def setup
    @author = authors(:charles)
    @book = @author.books.build(isbn: 1234567890123, title: "Adventure in Springfield")
  end
  
  test "should be valid" do
    assert @book.valid?
  end
  
  test "isbn should be present" do
    @book.isbn = "   "
    assert_not @book.valid?
  end
  
  test "title should be present" do
    @book.title = " "
    assert_not @book.valid?
  end
  
  test "isbn should not be too long" do
    @book.isbn = "1" * 14
    assert_not @book.valid?
  end
  
  test "isbn should not be too short" do
    @book.isbn = "1" * 9
    assert_not @book.valid?
  end
  
  test "isbns should be unique" do
    duplicate_book = @book.dup
    @book.save
    assert_not duplicate_book.valid?
  end
  
  test "order should be most recent first" do
    assert_equal books(:most_recent), Book.first
  end
  
end
