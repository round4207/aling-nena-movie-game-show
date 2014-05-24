require 'test_helper'

class Quiz1ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get play" do
    get :play
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
