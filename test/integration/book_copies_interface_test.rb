require 'test_helper'

class BookCopiesInterfaceTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
    @book = books(:book_one)
  end
  
  test "book copies interface" do
    log_in_as(@user)
    get book_path(@book)
    assert_select 'div.pagination'
    # Invalid submission
    assert_no_difference 'BookCopy.count' do
      post book_copies_path, params: { book_copy: {} }
    end
    # Valid submission
    assert_difference 'BookCopy.count', 1 do
      post book_copies_path, params: { book_copy: {book_id: @book.id} }
    end
    assert_redirected_to book_path(@book)
    follow_redirect!
    # Delete post
    assert_select 'a', text: 'delete'
    first_book_copy = @book.book_copies.paginate(page: 1).first
    assert_difference 'BookCopy.count', -1 do
      delete book_copy_path(first_book_copy)
    end
  end
  
end
