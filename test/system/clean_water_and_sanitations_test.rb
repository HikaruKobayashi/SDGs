require "application_system_test_case"

class CleanWaterAndSanitationsTest < ApplicationSystemTestCase
  setup do
    @clean_water_and_sanitation = clean_water_and_sanitations(:one)
  end

  test "visiting the index" do
    visit clean_water_and_sanitations_url
    assert_selector "h1", text: "Clean Water And Sanitations"
  end

  test "creating a Clean water and sanitation" do
    visit clean_water_and_sanitations_url
    click_on "New Clean Water And Sanitation"

    click_on "Create Clean water and sanitation"

    assert_text "Clean water and sanitation was successfully created"
    click_on "Back"
  end

  test "updating a Clean water and sanitation" do
    visit clean_water_and_sanitations_url
    click_on "Edit", match: :first

    click_on "Update Clean water and sanitation"

    assert_text "Clean water and sanitation was successfully updated"
    click_on "Back"
  end

  test "destroying a Clean water and sanitation" do
    visit clean_water_and_sanitations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clean water and sanitation was successfully destroyed"
  end
end
