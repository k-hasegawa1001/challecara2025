require "test_helper"

class GeoControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get geo_get_url
    assert_response :success
  end
end
