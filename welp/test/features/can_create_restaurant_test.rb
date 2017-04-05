require "test_helper"

class CanCreateRestaurantTest < Capybara::Rails::TestCase
  test "fills in restaurant form" do
    visit '/'
    click_link("Add New Restaurant")
    fill_in :name, with: "My Restaurant"
    fill_in :location, with: "Road Street"
    click_button("Add Restaurant")
    assert page.status_code => 200
  end
end
