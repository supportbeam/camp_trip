require 'test_helper'

class CampTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @camp = build(:camp)
  end

  test "should be invalid without a name" do
    @camp.name = nil
    assert_nil @camp.name
    assert_equal false, @camp.valid?
  end

  test "should be invalid without an address" do
    @camp.address = nil
    assert_nil @camp.address
    assert_equal false, @camp.valid?
  end

  test "a camp can have many reviews" do
  end

end
