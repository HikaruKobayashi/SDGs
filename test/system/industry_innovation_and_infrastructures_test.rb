require "application_system_test_case"

class IndustryInnovationAndInfrastructuresTest < ApplicationSystemTestCase
  setup do
    @industry_innovation_and_infrastructure = industry_innovation_and_infrastructures(:one)
  end

  test "visiting the index" do
    visit industry_innovation_and_infrastructures_url
    assert_selector "h1", text: "Industry Innovation And Infrastructures"
  end

  test "creating a Industry innovation and infrastructure" do
    visit industry_innovation_and_infrastructures_url
    click_on "New Industry Innovation And Infrastructure"

    click_on "Create Industry innovation and infrastructure"

    assert_text "Industry innovation and infrastructure was successfully created"
    click_on "Back"
  end

  test "updating a Industry innovation and infrastructure" do
    visit industry_innovation_and_infrastructures_url
    click_on "Edit", match: :first

    click_on "Update Industry innovation and infrastructure"

    assert_text "Industry innovation and infrastructure was successfully updated"
    click_on "Back"
  end

  test "destroying a Industry innovation and infrastructure" do
    visit industry_innovation_and_infrastructures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Industry innovation and infrastructure was successfully destroyed"
  end
end
