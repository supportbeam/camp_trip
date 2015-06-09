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
end
