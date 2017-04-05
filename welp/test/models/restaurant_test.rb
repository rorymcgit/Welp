require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  
  test "responds to name" do
    assert(Restaurant.first.name != nil)
  end

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

  test "restaurants can be deleted" do
    Restaurant.create(name: 'Testaurant')
    restaurant = Restaurant.find_by(name: 'Testaurant')
    assert(restaurant)
    Restaurant.delete_restaurant(restaurant.id)
    assert_not(Restaurant.find_by(name: 'Testaurant'))
  end
  
end
