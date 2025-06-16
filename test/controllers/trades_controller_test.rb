require "test_helper"

class TradesControllerTest < ActionDispatch::IntegrationTest
  test "should get recap" do
    get trades_recap_url
    assert_response :success
  end
end
