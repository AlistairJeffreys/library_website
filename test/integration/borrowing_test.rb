require 'test_helper'

class BorrowingTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kathy)
    @book_copy = book_copies(:book_copy_one)
    log_in_as(@user)
  end
  
  test "borrowing page" do
    get borrowing_user_path(@user)
    assert_not @user.borrowing.empty?
    assert_match @user.borrowing.count.to_s, response.body
    @user.borrowing.each do |book_copy|
      assert_select "a[href=?]", book_copy_path(book_copy)
    end
  end
  
  test "borrowers page" do
    get borrowers_book_copy_path(@book_copy)
    assert_not @book_copy.borrowers.empty?
    assert_match @book_copy.borrowers.count.to_s, response.body
    @book_copy.borrowers.each do |user|
      assert_select "a[href=?]", user_path(user)
    end
  end
  
end
