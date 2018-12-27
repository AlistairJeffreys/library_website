require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @author = authors(:charles)
    @user = users(:kate)
    @other_user = users(:kerry)
  end
  
  test "should get new" do
    log_in_as(@user)
    get authors_new_url
    assert_response :success
  end
  
  test "should get show" do
    get "/authors/#{@author.id}"
    assert_response :success
  end
  
  test "should get index" do
    get authors_path
    assert_response :success
  end
  
  test "should redirect new when not logged in" do
    get edit_author_path(@author)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect create when not logged in" do
    post authors_path, params: { author: { name: @author.name } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect edit when not logged in" do
    get edit_author_path(@author)
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect update when not logged in" do
    patch author_path(@author), params: { author: { name: @author.name } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Author.count' do
      delete author_path(@author)
    end
    assert_redirected_to login_url
  end
  
  test "should redirect new when logged in as a non-admin" do
    log_in_as(@other_user)
    get authors_new_url
    assert_redirected_to root_url
  end
  
  test "should redirect create when logged in as a non-admin" do
    log_in_as(@other_user)
    post authors_path, params: { author: { name: @author.name } }
    assert_redirected_to root_url
  end
  
  test "should redirect edit when logged in as a non-admin" do
    log_in_as(@other_user)
    get edit_author_path(@author)
    assert_redirected_to root_url
  end
  
  test "should redirect update when logged in as a non-admin" do
    log_in_as(@other_user)
    patch author_path(@author), params: { author: { name: @author.name } }
    assert_redirected_to root_url
  end
  
  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@other_user)
    assert_no_difference 'Author.count' do
      delete author_path(@author)
    end
    assert_redirected_to root_url
  end

end
