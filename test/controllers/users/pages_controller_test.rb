require "test_helper"

class Users::PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get users_pages_dashboard_url
    assert_response :success
  end

  test "should get profile" do
    get users_pages_profile_url
    assert_response :success
  end
end
