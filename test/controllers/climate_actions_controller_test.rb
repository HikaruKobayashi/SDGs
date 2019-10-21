require 'test_helper'

class ClimateActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @climate_action = climate_actions(:one)
  end

  test "should get index" do
    get climate_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_climate_action_url
    assert_response :success
  end

  test "should create climate_action" do
    assert_difference('ClimateAction.count') do
      post climate_actions_url, params: { climate_action: {  } }
    end

    assert_redirected_to climate_action_url(ClimateAction.last)
  end

  test "should show climate_action" do
    get climate_action_url(@climate_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_climate_action_url(@climate_action)
    assert_response :success
  end

  test "should update climate_action" do
    patch climate_action_url(@climate_action), params: { climate_action: {  } }
    assert_redirected_to climate_action_url(@climate_action)
  end

  test "should destroy climate_action" do
    assert_difference('ClimateAction.count', -1) do
      delete climate_action_url(@climate_action)
    end

    assert_redirected_to climate_actions_url
  end
end
