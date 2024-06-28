require "test_helper"

class DistrictsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get districts_show_url
    assert_response :success
  end
end
