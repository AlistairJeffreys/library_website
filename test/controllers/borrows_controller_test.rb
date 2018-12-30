require 'test_helper'

class BorrowsControllerTest < ActionDispatch::IntegrationTest
  
  test "create should require logged-in user" do
    assert_no_difference 'Borrow.count' do
      post borrows_path
    end
    assert_redirected_to login_url
  end
  
  test "destroy should require logged-in user" do
    assert_no_difference 'Borrow.count' do
      delete borrow_path(borrows(:one))
    end
    assert_redirected_to login_url
  end
  
end
