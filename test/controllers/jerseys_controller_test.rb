require "test_helper"

class JerseysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jerseys_index_url
    assert_response :success
  end

  test "should get show" do
    get jerseys_show_url
    assert_response :success
  end

  test "should get new" do
    get jerseys_new_url
    assert_response :success
  end

  test "should get create" do
    get jerseys_create_url
    assert_response :success
  end

  test "should get edit" do
    get jerseys_edit_url
    assert_response :success
  end

  test "should get update" do
    get jerseys_update_url
    assert_response :success
  end

  test "should get destroy" do
    get jerseys_destroy_url
    assert_response :success
  end
end
