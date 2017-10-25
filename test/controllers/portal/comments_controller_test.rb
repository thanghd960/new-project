require 'test_helper'

class Portal::CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_comments_index_url
    assert_response :success
  end

  test "should get update" do
    get portal_comments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_comments_destroy_url
    assert_response :success
  end

end
