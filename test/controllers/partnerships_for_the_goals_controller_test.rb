require 'test_helper'

class PartnershipsForTheGoalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partnerships_for_the_goal = partnerships_for_the_goals(:one)
  end

  test "should get index" do
    get partnerships_for_the_goals_url
    assert_response :success
  end

  test "should get new" do
    get new_partnerships_for_the_goal_url
    assert_response :success
  end

  test "should create partnerships_for_the_goal" do
    assert_difference('PartnershipsForTheGoal.count') do
      post partnerships_for_the_goals_url, params: { partnerships_for_the_goal: {  } }
    end

    assert_redirected_to partnerships_for_the_goal_url(PartnershipsForTheGoal.last)
  end

  test "should show partnerships_for_the_goal" do
    get partnerships_for_the_goal_url(@partnerships_for_the_goal)
    assert_response :success
  end

  test "should get edit" do
    get edit_partnerships_for_the_goal_url(@partnerships_for_the_goal)
    assert_response :success
  end

  test "should update partnerships_for_the_goal" do
    patch partnerships_for_the_goal_url(@partnerships_for_the_goal), params: { partnerships_for_the_goal: {  } }
    assert_redirected_to partnerships_for_the_goal_url(@partnerships_for_the_goal)
  end

  test "should destroy partnerships_for_the_goal" do
    assert_difference('PartnershipsForTheGoal.count', -1) do
      delete partnerships_for_the_goal_url(@partnerships_for_the_goal)
    end

    assert_redirected_to partnerships_for_the_goals_url
  end
end
