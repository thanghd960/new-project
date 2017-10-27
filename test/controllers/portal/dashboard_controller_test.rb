require 'test_helper'

class Portal::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portal_dashboard_index_url
    assert_response :success
  end

end
