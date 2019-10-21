require 'test_helper'

class ReducedInequeatiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reduced_inequeaty = reduced_inequeaties(:one)
  end

  test "should get index" do
    get reduced_inequeaties_url
    assert_response :success
  end

  test "should get new" do
    get new_reduced_inequeaty_url
    assert_response :success
  end

  test "should create reduced_inequeaty" do
    assert_difference('ReducedInequeaty.count') do
      post reduced_inequeaties_url, params: { reduced_inequeaty: {  } }
    end

    assert_redirected_to reduced_inequeaty_url(ReducedInequeaty.last)
  end

  test "should show reduced_inequeaty" do
    get reduced_inequeaty_url(@reduced_inequeaty)
    assert_response :success
  end

  test "should get edit" do
    get edit_reduced_inequeaty_url(@reduced_inequeaty)
    assert_response :success
  end

  test "should update reduced_inequeaty" do
    patch reduced_inequeaty_url(@reduced_inequeaty), params: { reduced_inequeaty: {  } }
    assert_redirected_to reduced_inequeaty_url(@reduced_inequeaty)
  end

  test "should destroy reduced_inequeaty" do
    assert_difference('ReducedInequeaty.count', -1) do
      delete reduced_inequeaty_url(@reduced_inequeaty)
    end

    assert_redirected_to reduced_inequeaties_url
  end
end
