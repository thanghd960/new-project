require 'test_helper'

class Portal::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get portal_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get portal_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_sessions_destroy_url
    assert_response :success
  end

end
