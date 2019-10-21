require 'test_helper'

class IndustryInnovationAndInfrastructuresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @industry_innovation_and_infrastructure = industry_innovation_and_infrastructures(:one)
  end

  test "should get index" do
    get industry_innovation_and_infrastructures_url
    assert_response :success
  end

  test "should get new" do
    get new_industry_innovation_and_infrastructure_url
    assert_response :success
  end

  test "should create industry_innovation_and_infrastructure" do
    assert_difference('IndustryInnovationAndInfrastructure.count') do
      post industry_innovation_and_infrastructures_url, params: { industry_innovation_and_infrastructure: {  } }
    end

    assert_redirected_to industry_innovation_and_infrastructure_url(IndustryInnovationAndInfrastructure.last)
  end

  test "should show industry_innovation_and_infrastructure" do
    get industry_innovation_and_infrastructure_url(@industry_innovation_and_infrastructure)
    assert_response :success
  end

  test "should get edit" do
    get edit_industry_innovation_and_infrastructure_url(@industry_innovation_and_infrastructure)
    assert_response :success
  end

  test "should update industry_innovation_and_infrastructure" do
    patch industry_innovation_and_infrastructure_url(@industry_innovation_and_infrastructure), params: { industry_innovation_and_infrastructure: {  } }
    assert_redirected_to industry_innovation_and_infrastructure_url(@industry_innovation_and_infrastructure)
  end

  test "should destroy industry_innovation_and_infrastructure" do
    assert_difference('IndustryInnovationAndInfrastructure.count', -1) do
      delete industry_innovation_and_infrastructure_url(@industry_innovation_and_infrastructure)
    end

    assert_redirected_to industry_innovation_and_infrastructures_url
  end
end
