require "test_helper"

class ExchangesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get exchanges_index_url
    assert_response :success
  end

  test "should get show" do
    get exchanges_show_url
    assert_response :success
  end

  test "should get new" do
    get exchanges_new_url
    assert_response :success
  end

  test "should get create" do
    get exchanges_create_url
    assert_response :success
  end
end
