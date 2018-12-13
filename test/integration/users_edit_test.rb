require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
  end
  
  test "unsuccessful edit" do
    get root_path
    log_in_as(@user)
    get edit_user_path(@user)
    assert_template 'users/edit'
    patch user_path(@user), params: { user: { name: "",
                                              email: "foo@invalid",
                                              library_card_number: "12345678901234",
                                              password: "foo",
                                              password_confirmation: "bar" } }
    assert_template 'users/edit'
    assert_select 'div.alert', "The form contains 4 errors"
  end
  
  test "successful edit with friendly forwarding" do
    get edit_user_path(@user)
    log_in_as(@user)
    assert_redirected_to edit_user_path(@user)
    name = "Foo Bar"
    email = "foo@bar.com"
    library_card_number = "12345678901234"
    patch user_path(@user), params: { user: { name: name,
                                              email: email,
                                              library_card_number: library_card_number,
                                              password: "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name, @user.name
    assert_equal email, @user.email
    assert_equal library_card_number.to_i, @user.library_card_number
  end
end
