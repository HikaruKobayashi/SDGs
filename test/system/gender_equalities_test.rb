require "application_system_test_case"

class GenderEqualitiesTest < ApplicationSystemTestCase
  setup do
    @gender_equality = gender_equalities(:one)
  end

  test "visiting the index" do
    visit gender_equalities_url
    assert_selector "h1", text: "Gender Equalities"
  end

  test "creating a Gender equality" do
    visit gender_equalities_url
    click_on "New Gender Equality"

    click_on "Create Gender equality"

    assert_text "Gender equality was successfully created"
    click_on "Back"
  end

  test "updating a Gender equality" do
    visit gender_equalities_url
    click_on "Edit", match: :first

    click_on "Update Gender equality"

    assert_text "Gender equality was successfully updated"
    click_on "Back"
  end

  test "destroying a Gender equality" do
    visit gender_equalities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gender equality was successfully destroyed"
  end
end
