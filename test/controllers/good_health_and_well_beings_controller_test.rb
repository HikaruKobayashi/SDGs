require 'test_helper'

class GoodHealthAndWellBeingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @good_health_and_well_being = good_health_and_well_beings(:one)
  end

  test "should get index" do
    get good_health_and_well_beings_url
    assert_response :success
  end

  test "should get new" do
    get new_good_health_and_well_being_url
    assert_response :success
  end

  test "should create good_health_and_well_being" do
    assert_difference('GoodHealthAndWellBeing.count') do
      post good_health_and_well_beings_url, params: { good_health_and_well_being: {  } }
    end

    assert_redirected_to good_health_and_well_being_url(GoodHealthAndWellBeing.last)
  end

  test "should show good_health_and_well_being" do
    get good_health_and_well_being_url(@good_health_and_well_being)
    assert_response :success
  end

  test "should get edit" do
    get edit_good_health_and_well_being_url(@good_health_and_well_being)
    assert_response :success
  end

  test "should update good_health_and_well_being" do
    patch good_health_and_well_being_url(@good_health_and_well_being), params: { good_health_and_well_being: {  } }
    assert_redirected_to good_health_and_well_being_url(@good_health_and_well_being)
  end

  test "should destroy good_health_and_well_being" do
    assert_difference('GoodHealthAndWellBeing.count', -1) do
      delete good_health_and_well_being_url(@good_health_and_well_being)
    end

    assert_redirected_to good_health_and_well_beings_url
  end
end
