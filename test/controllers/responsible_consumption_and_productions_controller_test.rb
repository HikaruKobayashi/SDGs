require 'test_helper'

class ResponsibleConsumptionAndProductionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @responsible_consumption_and_production = responsible_consumption_and_productions(:one)
  end

  test "should get index" do
    get responsible_consumption_and_productions_url
    assert_response :success
  end

  test "should get new" do
    get new_responsible_consumption_and_production_url
    assert_response :success
  end

  test "should create responsible_consumption_and_production" do
    assert_difference('ResponsibleConsumptionAndProduction.count') do
      post responsible_consumption_and_productions_url, params: { responsible_consumption_and_production: {  } }
    end

    assert_redirected_to responsible_consumption_and_production_url(ResponsibleConsumptionAndProduction.last)
  end

  test "should show responsible_consumption_and_production" do
    get responsible_consumption_and_production_url(@responsible_consumption_and_production)
    assert_response :success
  end

  test "should get edit" do
    get edit_responsible_consumption_and_production_url(@responsible_consumption_and_production)
    assert_response :success
  end

  test "should update responsible_consumption_and_production" do
    patch responsible_consumption_and_production_url(@responsible_consumption_and_production), params: { responsible_consumption_and_production: {  } }
    assert_redirected_to responsible_consumption_and_production_url(@responsible_consumption_and_production)
  end

  test "should destroy responsible_consumption_and_production" do
    assert_difference('ResponsibleConsumptionAndProduction.count', -1) do
      delete responsible_consumption_and_production_url(@responsible_consumption_and_production)
    end

    assert_redirected_to responsible_consumption_and_productions_url
  end
end
