require "test_helper"

class ReservesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reserves_index_url
    assert_response :success
  end

  test "should get confirm" do
    get reserves_confirm_url
    assert_response :success
  end

  test "should get decision" do
    get reserves_decision_url
    assert_response :success
  end
end
