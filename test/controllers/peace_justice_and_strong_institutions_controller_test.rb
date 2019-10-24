require 'test_helper'

class PeaceJusticeAndStrongInstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @peace_justice_and_strong_institution = peace_justice_and_strong_institutions(:one)
  end

  test "should get index" do
    get peace_justice_and_strong_institutions_url
    assert_response :success
  end

  test "should get new" do
    get new_peace_justice_and_strong_institution_url
    assert_response :success
  end

  test "should create peace_justice_and_strong_institution" do
    assert_difference('PeaceJusticeAndStrongInstitution.count') do
      post peace_justice_and_strong_institutions_url, params: { peace_justice_and_strong_institution: {  } }
    end

    assert_redirected_to peace_justice_and_strong_institution_url(PeaceJusticeAndStrongInstitution.last)
  end

  test "should show peace_justice_and_strong_institution" do
    get peace_justice_and_strong_institution_url(@peace_justice_and_strong_institution)
    assert_response :success
  end

  test "should get edit" do
    get edit_peace_justice_and_strong_institution_url(@peace_justice_and_strong_institution)
    assert_response :success
  end

  test "should update peace_justice_and_strong_institution" do
    patch peace_justice_and_strong_institution_url(@peace_justice_and_strong_institution), params: { peace_justice_and_strong_institution: {  } }
    assert_redirected_to peace_justice_and_strong_institution_url(@peace_justice_and_strong_institution)
  end

  test "should destroy peace_justice_and_strong_institution" do
    assert_difference('PeaceJusticeAndStrongInstitution.count', -1) do
      delete peace_justice_and_strong_institution_url(@peace_justice_and_strong_institution)
    end

    assert_redirected_to peace_justice_and_strong_institutions_url
  end
end
