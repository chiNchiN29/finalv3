require 'test_helper'

class PlayersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get round" do
    get :round
    assert_response :success
  end

  test "should get result" do
    get :result
    assert_response :success
  end

  test "should get summary" do
    get :summary
    assert_response :success
  end

end
