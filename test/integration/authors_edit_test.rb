require 'test_helper'

class AuthorsEditTest < ActionDispatch::IntegrationTest
  
  def setup
    @author = authors(:charles)
    @user = users(:kate)
  end
  
  test "unsuccessful edit" do
    log_in_as(@user)
    get edit_author_path(@author)
    assert_template 'authors/edit'
    patch author_path(@author), params: { author: { name: "" } }
    assert_template 'authors/edit'
  end
  
  test "successful edit with friendly forwarding" do
    get edit_author_path(@author)
    log_in_as(@user)
    assert_redirected_to edit_author_path(@author)
    name = "Charlie"
    birth_date = "1918"
    death_date = "1968"
    patch author_path(@author), params: { author: { name: name,
                                                    birth_date: birth_date,
                                                    death_date: death_date } }
    assert_not flash.empty?
    assert_redirected_to @author
    @author.reload
    assert_equal name, @author.name
    assert_equal DateTime.strptime(birth_date, "%Y"), @author.birth_date
    assert_equal DateTime.strptime(death_date, "%Y"), @author.death_date 
  end
  
  
end
