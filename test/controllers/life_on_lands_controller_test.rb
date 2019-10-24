require 'test_helper'

class LifeOnLandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @life_on_land = life_on_lands(:one)
  end

  test "should get index" do
    get life_on_lands_url
    assert_response :success
  end

  test "should get new" do
    get new_life_on_land_url
    assert_response :success
  end

  test "should create life_on_land" do
    assert_difference('LifeOnLand.count') do
      post life_on_lands_url, params: { life_on_land: {  } }
    end

    assert_redirected_to life_on_land_url(LifeOnLand.last)
  end

  test "should show life_on_land" do
    get life_on_land_url(@life_on_land)
    assert_response :success
  end

  test "should get edit" do
    get edit_life_on_land_url(@life_on_land)
    assert_response :success
  end

  test "should update life_on_land" do
    patch life_on_land_url(@life_on_land), params: { life_on_land: {  } }
    assert_redirected_to life_on_land_url(@life_on_land)
  end

  test "should destroy life_on_land" do
    assert_difference('LifeOnLand.count', -1) do
      delete life_on_land_url(@life_on_land)
    end

    assert_redirected_to life_on_lands_url
  end
end
