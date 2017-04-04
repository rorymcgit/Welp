require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "responds to name" do
    assert(Restaurant.first.name != nil)
  end

  test "restaurants can be deleted" do
    Restaurant.create(name: 'Testaurant')
    restaurant = Restaurant.find_by(name: 'Testaurant')
    assert(restaurant)
    Restaurant.delete_restaurant(restaurant.id)
    assert_not(Restaurant.find_by(name: 'Testaurant'))
  end
end
