require 'test_helper'

class ZeroHungersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zero_hunger = zero_hungers(:one)
  end

  test "should get index" do
    get zero_hungers_url
    assert_response :success
  end

  test "should get new" do
    get new_zero_hunger_url
    assert_response :success
  end

  test "should create zero_hunger" do
    assert_difference('ZeroHunger.count') do
      post zero_hungers_url, params: { zero_hunger: {  } }
    end

    assert_redirected_to zero_hunger_url(ZeroHunger.last)
  end

  test "should show zero_hunger" do
    get zero_hunger_url(@zero_hunger)
    assert_response :success
  end

  test "should get edit" do
    get edit_zero_hunger_url(@zero_hunger)
    assert_response :success
  end

  test "should update zero_hunger" do
    patch zero_hunger_url(@zero_hunger), params: { zero_hunger: {  } }
    assert_redirected_to zero_hunger_url(@zero_hunger)
  end

  test "should destroy zero_hunger" do
    assert_difference('ZeroHunger.count', -1) do
      delete zero_hunger_url(@zero_hunger)
    end

    assert_redirected_to zero_hungers_url
  end
end
