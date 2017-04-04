require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "has a name" do
    assert(Restaurant.all[0].name == "Jasmine")
  end

  test "has a location" do
    assert(Restaurant.all[0].location == "Brick lane")
  end

  test "adds a new restaurant to the database" do
    count = Restaurant.all.length
    Restaurant.create(id: 3, name: "Ma New FoodPlace", location: "Ma House")
    assert(Restaurant.all.length == (count + 1))
  end

end
