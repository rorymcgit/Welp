require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can get an average rating" do
    assert Restaurant.get_average_rating(Restaurant.find(1)) == 3
  end
end
