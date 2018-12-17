require 'test_helper'

class BooksEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @book = books(:book_one)
    @user = users(:kate)
  end
  
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_book_path(@book)
    assert_template 'books/edit'
    patch book_path(@book), params: { book: { title: "",
                                              isbn: "hey" } }
    assert_template 'books/edit'
    assert_select 'div.alert', "The form contains 2 errors"
  end
  
  test "successful edit with friendly forwarding" do
    get edit_book_path(@book)
    log_in_as(@user)
    assert_redirected_to edit_book_path(@book)
    title = "KJ Bible"
    isbn = "4242424242"
    author = "God"
    description = "Really?"
    genre = "Non-fiction"
    publication_date = "1918"
    publisher = "C of E"
    patch book_path(@book), params: { book: { title: title,
                                              isbn: isbn,
                                              author: author,
                                              description: description,
                                              genre: genre,
                                              publication_date: publication_date,
                                              publisher: publisher } }
    assert_not flash.empty?
    assert_redirected_to @book
    @book.reload
    assert_equal title, @book.title
    assert_equal isbn, @book.isbn.to_s
    assert_equal author, @book.author
    assert_equal description, @book.description
    assert_equal genre, @book.genre
    assert_equal DateTime.strptime(publication_date, "%Y"), @book.publication_date
    assert_equal publisher, @book.publisher
  end
end
