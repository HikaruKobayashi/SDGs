require "application_system_test_case"

class SustainableCitiesAndCommunitiesTest < ApplicationSystemTestCase
  setup do
    @sustainable_cities_and_community = sustainable_cities_and_communities(:one)
  end

  test "visiting the index" do
    visit sustainable_cities_and_communities_url
    assert_selector "h1", text: "Sustainable Cities And Communities"
  end

  test "creating a Sustainable cities and community" do
    visit sustainable_cities_and_communities_url
    click_on "New Sustainable Cities And Community"

    click_on "Create Sustainable cities and community"

    assert_text "Sustainable cities and community was successfully created"
    click_on "Back"
  end

  test "updating a Sustainable cities and community" do
    visit sustainable_cities_and_communities_url
    click_on "Edit", match: :first

    click_on "Update Sustainable cities and community"

    assert_text "Sustainable cities and community was successfully updated"
    click_on "Back"
  end

  test "destroying a Sustainable cities and community" do
    visit sustainable_cities_and_communities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sustainable cities and community was successfully destroyed"
  end
end
