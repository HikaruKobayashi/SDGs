require "application_system_test_case"

class NoPovertiesTest < ApplicationSystemTestCase
  setup do
    @no_poverty = no_poverties(:one)
  end

  test "visiting the index" do
    visit no_poverties_url
    assert_selector "h1", text: "No Poverties"
  end

  test "creating a No poverty" do
    visit no_poverties_url
    click_on "New No Poverty"

    click_on "Create No poverty"

    assert_text "No poverty was successfully created"
    click_on "Back"
  end

  test "updating a No poverty" do
    visit no_poverties_url
    click_on "Edit", match: :first

    click_on "Update No poverty"

    assert_text "No poverty was successfully updated"
    click_on "Back"
  end

  test "destroying a No poverty" do
    visit no_poverties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "No poverty was successfully destroyed"
  end
end
