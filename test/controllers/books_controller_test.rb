require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @book = books(:book_one)
    @other_user = users(:kerry)
  end
  
  test "should get show" do
    get "/books/#{@book.id}"
    assert_response :success
  end
  
  test "should get index" do
    get "/books"
    assert_response :success
  end
  
  test "should redirect new when not logged in" do
    get books_new_url
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect create when not logged in" do
    post books_path, params: { book: { title: "Booky",
                                      isbn: 1234567890 } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect edit when not logged in" do
    get edit_book_path(@book)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect update when not logged in" do
    patch book_path(@book), params: { book: { title: @book.title,
                                              isbn: @book.isbn } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Book.count' do
      delete book_path(@book)
    end
    assert_redirected_to login_url
  end
  
  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@other_user)
    assert_no_difference 'Book.count' do
      delete book_path(@book)
    end
    assert_redirected_to root_url
  end
  
  test "should redirect new when logged in as a non-admin" do
    log_in_as(@other_user)
    get books_new_url
    assert_redirected_to root_url
  end
  
  test "should redirect create when logged in as a non-admin" do
    log_in_as(@other_user)
    post books_path, params: { book: { title: "Booky",
                                      isbn: 1234567890 } }
    assert_redirected_to root_url
  end
  
  test "should redirect edit when logged in as a non-admin" do
    log_in_as(@other_user)
    get edit_book_path(@book)
    assert_redirected_to root_url
  end
  
  test "should redirect update when logged in as a non-admin" do
    log_in_as(@other_user)
    patch book_path(@book), params: { book: { title: @book.title,
                                              isbn: @book.isbn } }
    assert_redirected_to root_url
  end

end
