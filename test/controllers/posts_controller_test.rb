require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get posts_create_url
    assert_response :success
  end

  test "should get view" do
    get posts_view_url
    assert_response :success
  end
end
