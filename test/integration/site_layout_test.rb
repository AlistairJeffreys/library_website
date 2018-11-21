require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
  end
  
  test "sign up on the home page" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", signup_path
    get signup_path
    assert_template 'users/new'
  end
  
end
