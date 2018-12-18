require 'test_helper'

class BookCopiesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @book_copy = book_copies(:book_copy_one)
    @non_admin = users(:kerry)
  end
  
  test "should redirect create when not logged in" do
    assert_no_difference 'BookCopy.count' do
      post book_copies_path, params: { book_copy: {} }
    end
    assert_redirected_to login_url
  end
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'BookCopy.count' do
      delete book_copy_path(@book_copy)
    end
    assert_redirected_to login_url
  end
  
  test "should redirect create when logged in as a non-admin" do
    log_in_as @non_admin
    assert_no_difference 'BookCopy.count' do
      post book_copies_path, params: { book_copy: {} }
    end
    assert_redirected_to root_url
  end
  
  test "should redirect destroy when logged in as a non-admin" do
    log_in_as @non_admin
    assert_no_difference 'BookCopy.count' do
      delete book_copy_path(@book_copy)
    end
    assert_redirected_to root_url
  end
  
end
