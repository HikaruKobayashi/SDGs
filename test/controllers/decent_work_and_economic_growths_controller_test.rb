require 'test_helper'

class DecentWorkAndEconomicGrowthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @decent_work_and_economic_growth = decent_work_and_economic_growths(:one)
  end

  test "should get index" do
    get decent_work_and_economic_growths_url
    assert_response :success
  end

  test "should get new" do
    get new_decent_work_and_economic_growth_url
    assert_response :success
  end

  test "should create decent_work_and_economic_growth" do
    assert_difference('DecentWorkAndEconomicGrowth.count') do
      post decent_work_and_economic_growths_url, params: { decent_work_and_economic_growth: {  } }
    end

    assert_redirected_to decent_work_and_economic_growth_url(DecentWorkAndEconomicGrowth.last)
  end

  test "should show decent_work_and_economic_growth" do
    get decent_work_and_economic_growth_url(@decent_work_and_economic_growth)
    assert_response :success
  end

  test "should get edit" do
    get edit_decent_work_and_economic_growth_url(@decent_work_and_economic_growth)
    assert_response :success
  end

  test "should update decent_work_and_economic_growth" do
    patch decent_work_and_economic_growth_url(@decent_work_and_economic_growth), params: { decent_work_and_economic_growth: {  } }
    assert_redirected_to decent_work_and_economic_growth_url(@decent_work_and_economic_growth)
  end

  test "should destroy decent_work_and_economic_growth" do
    assert_difference('DecentWorkAndEconomicGrowth.count', -1) do
      delete decent_work_and_economic_growth_url(@decent_work_and_economic_growth)
    end

    assert_redirected_to decent_work_and_economic_growths_url
  end
end
