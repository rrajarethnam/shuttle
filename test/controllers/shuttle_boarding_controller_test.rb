require "test_helper"

class ShuttleBoardingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shuttle_boarding_index_url
    assert_response :success
  end
end
