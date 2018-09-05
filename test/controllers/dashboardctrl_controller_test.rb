require 'test_helper'

class DashboardctrlControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboardctrl_index_url
    assert_response :success
  end

end
