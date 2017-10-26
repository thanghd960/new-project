require 'test_helper'

class Portal::MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_messages_index_url
    assert_response :success
  end

  test "should get show" do
    get portal_messages_show_url
    assert_response :success
  end

  test "should get update" do
    get portal_messages_update_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_messages_destroy_url
    assert_response :success
  end

end
