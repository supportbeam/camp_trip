require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @user = build(:user)
  end

  test "should be invalid without an email" do
    @user.email = nil
    assert_nil @user.email
    assert_equal false, @user.valid?
  end

  # A user can be created with a password and confirmation
  # A user must have a password and confirmation on create
  # A user's confirmation must match a password
  # A user's email must be unique
  # A user can have many reviews
  # A user can list products it has reviewed without duplicates
  # A user must have a username
  
end
