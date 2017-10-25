require 'test_helper'

class Portal::VisitorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_visitors_index_url
    assert_response :success
  end

  test "should get destroy" do
    get portal_visitors_destroy_url
    assert_response :success
  end

end
