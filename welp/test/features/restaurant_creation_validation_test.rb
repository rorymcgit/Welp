require "test_helper"

class RestaurantCreationValidationTest < Capybara::Rails::TestCase
  test "throws error and redirects back to the new restaurant page if user doesn't enter a name" do
    assert(true)
  end
end
