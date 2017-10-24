require 'test_helper'

class Portal::TagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get portal_tags_new_url
    assert_response :success
  end

  test "should get create" do
    get portal_tags_create_url
    assert_response :success
  end

  test "should get edit" do
    get portal_tags_edit_url
    assert_response :success
  end

  test "should get update" do
    get portal_tags_update_url
    assert_response :success
  end

  test "should get show" do
    get portal_tags_show_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_tags_destroy_url
    assert_response :success
  end

end
