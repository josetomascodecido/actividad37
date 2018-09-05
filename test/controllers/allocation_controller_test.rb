require 'test_helper'

class AllocationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get allocation_create_url
    assert_response :success
  end

end
