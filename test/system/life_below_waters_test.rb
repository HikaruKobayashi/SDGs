require "application_system_test_case"

class LifeBelowWatersTest < ApplicationSystemTestCase
  setup do
    @life_below_water = life_below_waters(:one)
  end

  test "visiting the index" do
    visit life_below_waters_url
    assert_selector "h1", text: "Life Below Waters"
  end

  test "creating a Life below water" do
    visit life_below_waters_url
    click_on "New Life Below Water"

    click_on "Create Life below water"

    assert_text "Life below water was successfully created"
    click_on "Back"
  end

  test "updating a Life below water" do
    visit life_below_waters_url
    click_on "Edit", match: :first

    click_on "Update Life below water"

    assert_text "Life below water was successfully updated"
    click_on "Back"
  end

  test "destroying a Life below water" do
    visit life_below_waters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Life below water was successfully destroyed"
  end
end
