require "application_system_test_case"

class ZeroHungersTest < ApplicationSystemTestCase
  setup do
    @zero_hunger = zero_hungers(:one)
  end

  test "visiting the index" do
    visit zero_hungers_url
    assert_selector "h1", text: "Zero Hungers"
  end

  test "creating a Zero hunger" do
    visit zero_hungers_url
    click_on "New Zero Hunger"

    click_on "Create Zero hunger"

    assert_text "Zero hunger was successfully created"
    click_on "Back"
  end

  test "updating a Zero hunger" do
    visit zero_hungers_url
    click_on "Edit", match: :first

    click_on "Update Zero hunger"

    assert_text "Zero hunger was successfully updated"
    click_on "Back"
  end

  test "destroying a Zero hunger" do
    visit zero_hungers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Zero hunger was successfully destroyed"
  end
end
