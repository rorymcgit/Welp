require "test_helper"

class CanAccessHomeTest < Capybara::Rails::TestCase
  test "visit root and find \"Welp\" and not some gibberish" do
    visit '/'
    assert_content page, "Welp"
    refute_content page, "asfasfasfas fsa asfsada fasfas fasdf asfas wxx!"
  end

  test "click button" do
    visit '/'
    click_link("Add New Restaurant")
    assert_current_path('/restaurants/new')
  end
end
