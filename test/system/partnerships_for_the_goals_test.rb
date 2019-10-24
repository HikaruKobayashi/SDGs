require "application_system_test_case"

class PartnershipsForTheGoalsTest < ApplicationSystemTestCase
  setup do
    @partnerships_for_the_goal = partnerships_for_the_goals(:one)
  end

  test "visiting the index" do
    visit partnerships_for_the_goals_url
    assert_selector "h1", text: "Partnerships For The Goals"
  end

  test "creating a Partnerships for the goal" do
    visit partnerships_for_the_goals_url
    click_on "New Partnerships For The Goal"

    click_on "Create Partnerships for the goal"

    assert_text "Partnerships for the goal was successfully created"
    click_on "Back"
  end

  test "updating a Partnerships for the goal" do
    visit partnerships_for_the_goals_url
    click_on "Edit", match: :first

    click_on "Update Partnerships for the goal"

    assert_text "Partnerships for the goal was successfully updated"
    click_on "Back"
  end

  test "destroying a Partnerships for the goal" do
    visit partnerships_for_the_goals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Partnerships for the goal was successfully destroyed"
  end
end
