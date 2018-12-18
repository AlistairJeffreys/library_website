require 'test_helper'

class BooksPageTest < ActionDispatch::IntegrationTest
  include ApplicationHelper
  
  def setup
    @book = books(:book_one)
  end
  
  test "book display" do
    get book_path(@book)
    assert_template 'books/show'
    assert_select 'title', full_title(@book.title)
    assert_select 'h1', text: @book.title
    assert_match @book.book_copies.count.to_s, response.body
    assert_select 'div.pagination'
  end
end
