require 'test_helper'

class NoPovertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @no_poverty = no_poverties(:one)
  end

  test "should get index" do
    get no_poverties_url
    assert_response :success
  end

  test "should get new" do
    get new_no_poverty_url
    assert_response :success
  end

  test "should create no_poverty" do
    assert_difference('NoPoverty.count') do
      post no_poverties_url, params: { no_poverty: {  } }
    end

    assert_redirected_to no_poverty_url(NoPoverty.last)
  end

  test "should show no_poverty" do
    get no_poverty_url(@no_poverty)
    assert_response :success
  end

  test "should get edit" do
    get edit_no_poverty_url(@no_poverty)
    assert_response :success
  end

  test "should update no_poverty" do
    patch no_poverty_url(@no_poverty), params: { no_poverty: {  } }
    assert_redirected_to no_poverty_url(@no_poverty)
  end

  test "should destroy no_poverty" do
    assert_difference('NoPoverty.count', -1) do
      delete no_poverty_url(@no_poverty)
    end

    assert_redirected_to no_poverties_url
  end
end
