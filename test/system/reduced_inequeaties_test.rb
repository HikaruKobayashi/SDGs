require "application_system_test_case"

class ReducedInequeatiesTest < ApplicationSystemTestCase
  setup do
    @reduced_inequeaty = reduced_inequeaties(:one)
  end

  test "visiting the index" do
    visit reduced_inequeaties_url
    assert_selector "h1", text: "Reduced Inequeaties"
  end

  test "creating a Reduced inequeaty" do
    visit reduced_inequeaties_url
    click_on "New Reduced Inequeaty"

    click_on "Create Reduced inequeaty"

    assert_text "Reduced inequeaty was successfully created"
    click_on "Back"
  end

  test "updating a Reduced inequeaty" do
    visit reduced_inequeaties_url
    click_on "Edit", match: :first

    click_on "Update Reduced inequeaty"

    assert_text "Reduced inequeaty was successfully updated"
    click_on "Back"
  end

  test "destroying a Reduced inequeaty" do
    visit reduced_inequeaties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reduced inequeaty was successfully destroyed"
  end
end
