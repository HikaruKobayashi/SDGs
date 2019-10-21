require "application_system_test_case"

class PeaceJusticeAndStrongInstitutionsTest < ApplicationSystemTestCase
  setup do
    @peace_justice_and_strong_institution = peace_justice_and_strong_institutions(:one)
  end

  test "visiting the index" do
    visit peace_justice_and_strong_institutions_url
    assert_selector "h1", text: "Peace Justice And Strong Institutions"
  end

  test "creating a Peace justice and strong institution" do
    visit peace_justice_and_strong_institutions_url
    click_on "New Peace Justice And Strong Institution"

    click_on "Create Peace justice and strong institution"

    assert_text "Peace justice and strong institution was successfully created"
    click_on "Back"
  end

  test "updating a Peace justice and strong institution" do
    visit peace_justice_and_strong_institutions_url
    click_on "Edit", match: :first

    click_on "Update Peace justice and strong institution"

    assert_text "Peace justice and strong institution was successfully updated"
    click_on "Back"
  end

  test "destroying a Peace justice and strong institution" do
    visit peace_justice_and_strong_institutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Peace justice and strong institution was successfully destroyed"
  end
end
