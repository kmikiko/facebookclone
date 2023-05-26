require "test_helper"

class FacebookclonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facebookclones_index_url
    assert_response :success
  end
end
