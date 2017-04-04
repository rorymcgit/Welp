require 'test_helper'

class SeeingListOfRestaurantsTest < ActionDispatch::IntegrationTest
  test "seeing a list of restaurants" do
    https!
    get "/"
    assert_response :success
    assert assigns(:restaurants)[0] == Restaurant.all[0]
    # more can be done here, once creating a restaurant is finished
  end
end
