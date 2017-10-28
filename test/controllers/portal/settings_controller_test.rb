require 'test_helper'

class Portal::SettingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get portal_settings_new_url
    assert_response :success
  end

  test "should get create" do
    get portal_settings_create_url
    assert_response :success
  end

  test "should get edit" do
    get portal_settings_edit_url
    assert_response :success
  end

  test "should get update" do
    get portal_settings_update_url
    assert_response :success
  end

end
