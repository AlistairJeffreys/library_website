require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(name: "Test User", email: "test@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  test "should get new" do
    get signup_path
    assert_response :success
  end
  
  test "should get show" do
    get "/users/1"
    assert_response :success
  end

end
