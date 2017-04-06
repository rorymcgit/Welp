require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "has an email" do
    @user = users(:one)
    assert(@user)
  end
end
