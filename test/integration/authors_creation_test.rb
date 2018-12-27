require 'test_helper'

class AuthorsCreationTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
  end
  
  test "invalid author creation information" do
    log_in_as(@user)
    get authors_new_path
    assert_no_difference 'Author.count' do
      post authors_path, params: { author: { name: "",
                                             birth_date: "2018",
                                             death_date: "2010" } }
    end
    assert_template 'authors/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
  end
  
  test "valid creation information" do
    log_in_as(@user)
    get authors_new_path
    assert_difference 'Author.count', 1 do
      post authors_path, params: { author: { name: "Example Author",
                                             birth_date: "1818",
                                             death_date: "1868" } }
    end
    follow_redirect!
    assert_template 'authors/show'
    assert_not flash.empty?
  end
end
