require 'test_helper'

class Portal::NotificationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_notifications_index_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_notifications_destroy_url
    assert_response :success
  end

end
