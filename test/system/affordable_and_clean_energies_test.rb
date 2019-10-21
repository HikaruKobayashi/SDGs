require "application_system_test_case"

class AffordableAndCleanEnergiesTest < ApplicationSystemTestCase
  setup do
    @affordable_and_clean_energy = affordable_and_clean_energies(:one)
  end

  test "visiting the index" do
    visit affordable_and_clean_energies_url
    assert_selector "h1", text: "Affordable And Clean Energies"
  end

  test "creating a Affordable and clean energy" do
    visit affordable_and_clean_energies_url
    click_on "New Affordable And Clean Energy"

    click_on "Create Affordable and clean energy"

    assert_text "Affordable and clean energy was successfully created"
    click_on "Back"
  end

  test "updating a Affordable and clean energy" do
    visit affordable_and_clean_energies_url
    click_on "Edit", match: :first

    click_on "Update Affordable and clean energy"

    assert_text "Affordable and clean energy was successfully updated"
    click_on "Back"
  end

  test "destroying a Affordable and clean energy" do
    visit affordable_and_clean_energies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Affordable and clean energy was successfully destroyed"
  end
end
