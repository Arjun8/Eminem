require 'test_helper'

class Eminem1ControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get eminem1_home_url
    assert_response :success
  end

end
