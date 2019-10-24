require "application_system_test_case"

class LifeOnLandsTest < ApplicationSystemTestCase
  setup do
    @life_on_land = life_on_lands(:one)
  end

  test "visiting the index" do
    visit life_on_lands_url
    assert_selector "h1", text: "Life On Lands"
  end

  test "creating a Life on land" do
    visit life_on_lands_url
    click_on "New Life On Land"

    click_on "Create Life on land"

    assert_text "Life on land was successfully created"
    click_on "Back"
  end

  test "updating a Life on land" do
    visit life_on_lands_url
    click_on "Edit", match: :first

    click_on "Update Life on land"

    assert_text "Life on land was successfully updated"
    click_on "Back"
  end

  test "destroying a Life on land" do
    visit life_on_lands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Life on land was successfully destroyed"
  end
end
