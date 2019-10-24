require "application_system_test_case"

class ResponsibleConsumptionAndProductionsTest < ApplicationSystemTestCase
  setup do
    @responsible_consumption_and_production = responsible_consumption_and_productions(:one)
  end

  test "visiting the index" do
    visit responsible_consumption_and_productions_url
    assert_selector "h1", text: "Responsible Consumption And Productions"
  end

  test "creating a Responsible consumption and production" do
    visit responsible_consumption_and_productions_url
    click_on "New Responsible Consumption And Production"

    click_on "Create Responsible consumption and production"

    assert_text "Responsible consumption and production was successfully created"
    click_on "Back"
  end

  test "updating a Responsible consumption and production" do
    visit responsible_consumption_and_productions_url
    click_on "Edit", match: :first

    click_on "Update Responsible consumption and production"

    assert_text "Responsible consumption and production was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsible consumption and production" do
    visit responsible_consumption_and_productions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsible consumption and production was successfully destroyed"
  end
end
