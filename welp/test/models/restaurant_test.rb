require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "responds to name" do
    p Restaurant.first
    assert(Restaurant.first.name != nil)
  end
end
