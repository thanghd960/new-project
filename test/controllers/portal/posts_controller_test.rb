require 'test_helper'

class Portal::PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_posts_index_url
    assert_response :success
  end

  test "should get new" do
    get portal_posts_new_url
    assert_response :success
  end

  test "should get create" do
    get portal_posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get portal_posts_edit_url
    assert_response :success
  end

  test "should get update" do
    get portal_posts_update_url
    assert_response :success
  end

  test "should get show" do
    get portal_posts_show_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_posts_destroy_url
    assert_response :success
  end

end
