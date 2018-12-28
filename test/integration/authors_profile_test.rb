require 'test_helper'

class AuthorsProfileTest < ActionDispatch::IntegrationTest
  include ApplicationHelper
  
  def setup
    @author = authors(:charles)
  end
  
  test "profile display" do
    get author_path(@author)
    assert_template 'authors/show'
    assert_select 'title', full_title(@author.name)
    assert_select 'h1', text: @author.name
    assert_match @author.books.count.to_s, response.body
    assert_select 'div.pagination'
  end
  
end
