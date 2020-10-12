require 'test_helper'

class BoxerPalletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boxer_pallet = boxer_pallets(:one)
  end

  test "should get index" do
    get boxer_pallets_url
    assert_response :success
  end

  test "should get new" do
    get new_boxer_pallet_url
    assert_response :success
  end

  test "should create boxer_pallet" do
    assert_difference('BoxerPallet.count') do
      post boxer_pallets_url, params: { boxer_pallet: {  } }
    end

    assert_redirected_to boxer_pallet_url(BoxerPallet.last)
  end

  test "should show boxer_pallet" do
    get boxer_pallet_url(@boxer_pallet)
    assert_response :success
  end

  test "should get edit" do
    get edit_boxer_pallet_url(@boxer_pallet)
    assert_response :success
  end

  test "should update boxer_pallet" do
    patch boxer_pallet_url(@boxer_pallet), params: { boxer_pallet: {  } }
    assert_redirected_to boxer_pallet_url(@boxer_pallet)
  end

  test "should destroy boxer_pallet" do
    assert_difference('BoxerPallet.count', -1) do
      delete boxer_pallet_url(@boxer_pallet)
    end

    assert_redirected_to boxer_pallets_url
  end
end
