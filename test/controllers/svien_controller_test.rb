require "test_helper"

class SvienControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get svien_new_url
    assert_response :success
  end
end
