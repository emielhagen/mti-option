require "application_system_test_case"

class BoxerPalletsTest < ApplicationSystemTestCase
  setup do
    @boxer_pallet = boxer_pallets(:one)
  end

  test "visiting the index" do
    visit boxer_pallets_url
    assert_selector "h1", text: "Boxer Pallets"
  end

  test "creating a Boxer pallet" do
    visit boxer_pallets_url
    click_on "New Boxer Pallet"

    click_on "Create Boxer pallet"

    assert_text "Boxer pallet was successfully created"
    click_on "Back"
  end

  test "updating a Boxer pallet" do
    visit boxer_pallets_url
    click_on "Edit", match: :first

    click_on "Update Boxer pallet"

    assert_text "Boxer pallet was successfully updated"
    click_on "Back"
  end

  test "destroying a Boxer pallet" do
    visit boxer_pallets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boxer pallet was successfully destroyed"
  end
end
