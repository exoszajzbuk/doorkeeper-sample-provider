require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get me" do
    get :me
    assert_response :success
  end

end
