require 'test_helper'

class Eminem1ControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
   get '/'
   assert_response :success
  end

end
