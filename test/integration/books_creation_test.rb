require 'test_helper'

class BooksCreationTest < ActionDispatch::IntegrationTest
  
  test "invalid book information" do
    get books_new_path
    assert_no_difference 'Book.count' do
      post books_path, params: { book: { title: "",
                                         isbn: 12 } }
    end
    assert_template 'books/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end
  
  test "valid signup information" do
    get books_new_path
    assert_difference 'Book.count', 1 do
      post books_path, params: { book: { title: "Test Book",
                                         isbn: 1234567890,
                                         publication_date: "2018" } }
    end
    follow_redirect!
    assert_template 'books/show'
    assert_not flash.empty?
  end
  
end
