require 'test_helper'

class BooksIndexTest < ActionDispatch::IntegrationTest
  
  def setup
    @admin = users(:kate)
    @non_admin = users(:kerry)
    @book = books(:book_one)
  end
  
  test "index as admin including pagination and delete links" do
    log_in_as(@admin)
    get books_path
    assert_template 'books/index'
    assert_select 'div.pagination'
    first_page_of_books = Book.paginate(page: 1)
    first_page_of_books.each do |book|
      assert_select 'a[href=?]', book_path(book), text: book.title
      assert_select 'a[href=?]', book_path(book), text: 'delete'
    end
    assert_difference 'Book.count', -1 do
      delete book_path(@book)
    end
  end
  
  test "index as non-admin" do
    log_in_as(@non_admin)
    get books_path
    assert_select 'a', text: 'delete', count: 0
  end
end 
