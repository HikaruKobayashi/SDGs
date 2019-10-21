require "application_system_test_case"

class QualityEduactionsTest < ApplicationSystemTestCase
  setup do
    @quality_eduaction = quality_eduactions(:one)
  end

  test "visiting the index" do
    visit quality_eduactions_url
    assert_selector "h1", text: "Quality Eduactions"
  end

  test "creating a Quality eduaction" do
    visit quality_eduactions_url
    click_on "New Quality Eduaction"

    click_on "Create Quality eduaction"

    assert_text "Quality eduaction was successfully created"
    click_on "Back"
  end

  test "updating a Quality eduaction" do
    visit quality_eduactions_url
    click_on "Edit", match: :first

    click_on "Update Quality eduaction"

    assert_text "Quality eduaction was successfully updated"
    click_on "Back"
  end

  test "destroying a Quality eduaction" do
    visit quality_eduactions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quality eduaction was successfully destroyed"
  end
end
