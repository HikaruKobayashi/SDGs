require "application_system_test_case"

class ClimateActionsTest < ApplicationSystemTestCase
  setup do
    @climate_action = climate_actions(:one)
  end

  test "visiting the index" do
    visit climate_actions_url
    assert_selector "h1", text: "Climate Actions"
  end

  test "creating a Climate action" do
    visit climate_actions_url
    click_on "New Climate Action"

    click_on "Create Climate action"

    assert_text "Climate action was successfully created"
    click_on "Back"
  end

  test "updating a Climate action" do
    visit climate_actions_url
    click_on "Edit", match: :first

    click_on "Update Climate action"

    assert_text "Climate action was successfully updated"
    click_on "Back"
  end

  test "destroying a Climate action" do
    visit climate_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Climate action was successfully destroyed"
  end
end
