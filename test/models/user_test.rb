require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Test User", email: "test@example.com",
                     library_card_number: "12345678901234",
                     password: "foobar", password_confirmation: "foobar")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
  test "name should be present" do
    @user.name = "    "
    assert_not @user.valid?
  end
  
  test "email should be present" do
    @user.email = "    "
    assert_not @user.valid?
  end
  
  test "name should not be too long" do
    @user.name = "a" * 41
    assert_not @user.valid?
  end
  
  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end
  
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com foo foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
  
  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMple.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end
  
  test "a user must have a password and a password confirmation" do
    @user.password = ""
    @user.password_confirmation = ""
    assert_not @user.valid?
  end
  
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end
  
  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
  
  test "a user must have a library card number" do
    @user.library_card_number = ""
    assert_not @user.valid?
  end
  
  test "the library card number must be minimum length 14" do
    @user.library_card_number = "1"
    assert_not @user.valid?
  end
  
  test "the library card number must be maximum length 14" do
    @user.library_card_number = "123456789012345"
    assert_not @user.valid?
  end
  
  test "should reserve and unreserve a book copy" do
    kathy = users(:kathy)
    book_copy_one = book_copies(:book_copy_one)
    assert_not kathy.reserving?(book_copy_one)
    kathy.reserve(book_copy_one)
    assert kathy.reserving?(book_copy_one)
    assert book_copy_one.reservers.include?(kathy)
    kathy.unreserve(book_copy_one)
    assert_not kathy.reserving?(book_copy_one)
  end
  
end
