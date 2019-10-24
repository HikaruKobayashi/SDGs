require 'test_helper'

class GenderEqualitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gender_equality = gender_equalities(:one)
  end

  test "should get index" do
    get gender_equalities_url
    assert_response :success
  end

  test "should get new" do
    get new_gender_equality_url
    assert_response :success
  end

  test "should create gender_equality" do
    assert_difference('GenderEquality.count') do
      post gender_equalities_url, params: { gender_equality: {  } }
    end

    assert_redirected_to gender_equality_url(GenderEquality.last)
  end

  test "should show gender_equality" do
    get gender_equality_url(@gender_equality)
    assert_response :success
  end

  test "should get edit" do
    get edit_gender_equality_url(@gender_equality)
    assert_response :success
  end

  test "should update gender_equality" do
    patch gender_equality_url(@gender_equality), params: { gender_equality: {  } }
    assert_redirected_to gender_equality_url(@gender_equality)
  end

  test "should destroy gender_equality" do
    assert_difference('GenderEquality.count', -1) do
      delete gender_equality_url(@gender_equality)
    end

    assert_redirected_to gender_equalities_url
  end
end
