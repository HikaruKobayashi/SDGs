require "application_system_test_case"

class DecentWorkAndEconomicGrowthsTest < ApplicationSystemTestCase
  setup do
    @decent_work_and_economic_growth = decent_work_and_economic_growths(:one)
  end

  test "visiting the index" do
    visit decent_work_and_economic_growths_url
    assert_selector "h1", text: "Decent Work And Economic Growths"
  end

  test "creating a Decent work and economic growth" do
    visit decent_work_and_economic_growths_url
    click_on "New Decent Work And Economic Growth"

    click_on "Create Decent work and economic growth"

    assert_text "Decent work and economic growth was successfully created"
    click_on "Back"
  end

  test "updating a Decent work and economic growth" do
    visit decent_work_and_economic_growths_url
    click_on "Edit", match: :first

    click_on "Update Decent work and economic growth"

    assert_text "Decent work and economic growth was successfully updated"
    click_on "Back"
  end

  test "destroying a Decent work and economic growth" do
    visit decent_work_and_economic_growths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Decent work and economic growth was successfully destroyed"
  end
end
