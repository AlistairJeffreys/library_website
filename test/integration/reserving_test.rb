require 'test_helper'

class ReservingTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
    @book_copy = book_copies(:book_copy_one)
    log_in_as(@user)
  end
  
  test "reserving page" do
    get reserving_user_path(@user)
    assert_not @user.reserving.empty?
    assert_match @user.reserving.count.to_s, response.body
    @user.reserving.each do |book_copy|
      assert_select "a[href=?]", book_copy_path(book_copy)
    end
  end
  
  test "reservers page" do
    get reservers_book_copy_path(@book_copy)
    assert_not @book_copy.reservers.empty?
    assert_match @book_copy.reservers.count.to_s, response.body
    @book_copy.reservers.each do |user|
      assert_select "a[href=?]", user_path(user)
    end
  end
  
end
