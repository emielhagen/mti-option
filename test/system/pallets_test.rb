require "application_system_test_case"

class PalletsTest < ApplicationSystemTestCase
  setup do
    @pallet = pallets(:one)
  end

  test "visiting the index" do
    visit pallets_url
    assert_selector "h1", text: "Pallets"
  end

  test "creating a Pallet" do
    visit pallets_url
    click_on "New Pallet"

    click_on "Create Pallet"

    assert_text "Pallet was successfully created"
    click_on "Back"
  end

  test "updating a Pallet" do
    visit pallets_url
    click_on "Edit", match: :first

    click_on "Update Pallet"

    assert_text "Pallet was successfully updated"
    click_on "Back"
  end

  test "destroying a Pallet" do
    visit pallets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pallet was successfully destroyed"
  end
end
