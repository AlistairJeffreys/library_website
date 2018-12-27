require 'test_helper'

class AuthorsIndexTest < ActionDispatch::IntegrationTest
  
  def setup
    @user = users(:kate)
    @non_admin = users(:kerry)
    @author = authors(:charles)
  end
  
  test "index including pagination" do
    log_in_as(@user)
    get authors_path
    assert_template 'authors/index'
    assert_select 'div.pagination'
    Author.paginate(page: 1).each do |author|
      assert_select 'a[href=?]', author_path(author), text: author.name
      assert_select 'a[href=?]', author_path(author), text: 'delete'
    end
    assert_difference 'Author.count', -1 do
      delete author_path(@author)
    end
  end
  
  test "index as non-admin" do
    log_in_as(@non_admin)
    get authors_path
    assert_select 'a', text: 'delete', count: 0
  end
end
