require "application_system_test_case"

class GoodHealthAndWellBeingsTest < ApplicationSystemTestCase
  setup do
    @good_health_and_well_being = good_health_and_well_beings(:one)
  end

  test "visiting the index" do
    visit good_health_and_well_beings_url
    assert_selector "h1", text: "Good Health And Well Beings"
  end

  test "creating a Good health and well being" do
    visit good_health_and_well_beings_url
    click_on "New Good Health And Well Being"

    click_on "Create Good health and well being"

    assert_text "Good health and well being was successfully created"
    click_on "Back"
  end

  test "updating a Good health and well being" do
    visit good_health_and_well_beings_url
    click_on "Edit", match: :first

    click_on "Update Good health and well being"

    assert_text "Good health and well being was successfully updated"
    click_on "Back"
  end

  test "destroying a Good health and well being" do
    visit good_health_and_well_beings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Good health and well being was successfully destroyed"
  end
end
