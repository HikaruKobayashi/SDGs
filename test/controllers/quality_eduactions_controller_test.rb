require 'test_helper'

class QualityEduactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quality_eduaction = quality_eduactions(:one)
  end

  test "should get index" do
    get quality_eduactions_url
    assert_response :success
  end

  test "should get new" do
    get new_quality_eduaction_url
    assert_response :success
  end

  test "should create quality_eduaction" do
    assert_difference('QualityEduaction.count') do
      post quality_eduactions_url, params: { quality_eduaction: {  } }
    end

    assert_redirected_to quality_eduaction_url(QualityEduaction.last)
  end

  test "should show quality_eduaction" do
    get quality_eduaction_url(@quality_eduaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_quality_eduaction_url(@quality_eduaction)
    assert_response :success
  end

  test "should update quality_eduaction" do
    patch quality_eduaction_url(@quality_eduaction), params: { quality_eduaction: {  } }
    assert_redirected_to quality_eduaction_url(@quality_eduaction)
  end

  test "should destroy quality_eduaction" do
    assert_difference('QualityEduaction.count', -1) do
      delete quality_eduaction_url(@quality_eduaction)
    end

    assert_redirected_to quality_eduactions_url
  end
end
