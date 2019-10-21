require 'test_helper'

class CleanWaterAndSanitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clean_water_and_sanitation = clean_water_and_sanitations(:one)
  end

  test "should get index" do
    get clean_water_and_sanitations_url
    assert_response :success
  end

  test "should get new" do
    get new_clean_water_and_sanitation_url
    assert_response :success
  end

  test "should create clean_water_and_sanitation" do
    assert_difference('CleanWaterAndSanitation.count') do
      post clean_water_and_sanitations_url, params: { clean_water_and_sanitation: {  } }
    end

    assert_redirected_to clean_water_and_sanitation_url(CleanWaterAndSanitation.last)
  end

  test "should show clean_water_and_sanitation" do
    get clean_water_and_sanitation_url(@clean_water_and_sanitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_clean_water_and_sanitation_url(@clean_water_and_sanitation)
    assert_response :success
  end

  test "should update clean_water_and_sanitation" do
    patch clean_water_and_sanitation_url(@clean_water_and_sanitation), params: { clean_water_and_sanitation: {  } }
    assert_redirected_to clean_water_and_sanitation_url(@clean_water_and_sanitation)
  end

  test "should destroy clean_water_and_sanitation" do
    assert_difference('CleanWaterAndSanitation.count', -1) do
      delete clean_water_and_sanitation_url(@clean_water_and_sanitation)
    end

    assert_redirected_to clean_water_and_sanitations_url
  end
end
