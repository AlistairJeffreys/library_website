require 'test_helper'

class BooksCreationTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
    @author = authors(:charles)
  end
  
  test "invalid book information" do
    log_in_as(@user)
    get books_new_path
    assert_no_difference 'Book.count' do
      post books_path, params: { book: { title: "",
                                         isbn: 12 } }
    end
    assert_template 'books/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end
  
  test "valid book information" do
    log_in_as(@user)
    get books_new_path
    assert_select 'input[type=file]'
    picture = fixture_file_upload('test/fixtures/logo.png', 'image/png')
    assert_difference 'Book.count', 1 do
      post books_path, params: { book: { title: "Test Book",
                                         isbn: 1234567890,
                                         author: @author.name,
                                         publication_date: "2018",
                                         picture: picture } }
    end
    follow_redirect!
    assert_template 'books/show'
    assert_not flash.empty?
  end
  
end
