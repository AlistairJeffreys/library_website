require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  
  def setup
    @author = Author.new(name: "Robert Harris")
  end
  
  test "should be valid" do
    assert @author.valid?
  end
  
  test "name should be present" do
    @author.name = " "
    assert_not @author.valid?
  end
  
  test "name should not be too long" do
    @author.name = "a" * 51
    assert_not @author.valid?
  end
  
  test "associated books should not be destroyed" do
    @author.save
    @author.books.create!(title: "A Book", isbn: 1234567890123)
    assert_no_difference 'Book.count', -1 do
      @author.destroy
    end
  end
end
