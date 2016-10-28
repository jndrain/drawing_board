require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get Artists" do
    get :Artists
    assert_response :success
  end

  test "should get Projects" do
    get :Projects
    assert_response :success
  end

  test "should get Comments" do
    get :Comments
    assert_response :success
  end

end
