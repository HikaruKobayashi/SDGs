require 'test_helper'

class AffordableAndCleanEnergiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @affordable_and_clean_energy = affordable_and_clean_energies(:one)
  end

  test "should get index" do
    get affordable_and_clean_energies_url
    assert_response :success
  end

  test "should get new" do
    get new_affordable_and_clean_energy_url
    assert_response :success
  end

  test "should create affordable_and_clean_energy" do
    assert_difference('AffordableAndCleanEnergy.count') do
      post affordable_and_clean_energies_url, params: { affordable_and_clean_energy: {  } }
    end

    assert_redirected_to affordable_and_clean_energy_url(AffordableAndCleanEnergy.last)
  end

  test "should show affordable_and_clean_energy" do
    get affordable_and_clean_energy_url(@affordable_and_clean_energy)
    assert_response :success
  end

  test "should get edit" do
    get edit_affordable_and_clean_energy_url(@affordable_and_clean_energy)
    assert_response :success
  end

  test "should update affordable_and_clean_energy" do
    patch affordable_and_clean_energy_url(@affordable_and_clean_energy), params: { affordable_and_clean_energy: {  } }
    assert_redirected_to affordable_and_clean_energy_url(@affordable_and_clean_energy)
  end

  test "should destroy affordable_and_clean_energy" do
    assert_difference('AffordableAndCleanEnergy.count', -1) do
      delete affordable_and_clean_energy_url(@affordable_and_clean_energy)
    end

    assert_redirected_to affordable_and_clean_energies_url
  end
end
