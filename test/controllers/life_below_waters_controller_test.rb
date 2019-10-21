require 'test_helper'

class LifeBelowWatersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @life_below_water = life_below_waters(:one)
  end

  test "should get index" do
    get life_below_waters_url
    assert_response :success
  end

  test "should get new" do
    get new_life_below_water_url
    assert_response :success
  end

  test "should create life_below_water" do
    assert_difference('LifeBelowWater.count') do
      post life_below_waters_url, params: { life_below_water: {  } }
    end

    assert_redirected_to life_below_water_url(LifeBelowWater.last)
  end

  test "should show life_below_water" do
    get life_below_water_url(@life_below_water)
    assert_response :success
  end

  test "should get edit" do
    get edit_life_below_water_url(@life_below_water)
    assert_response :success
  end

  test "should update life_below_water" do
    patch life_below_water_url(@life_below_water), params: { life_below_water: {  } }
    assert_redirected_to life_below_water_url(@life_below_water)
  end

  test "should destroy life_below_water" do
    assert_difference('LifeBelowWater.count', -1) do
      delete life_below_water_url(@life_below_water)
    end

    assert_redirected_to life_below_waters_url
  end
end
