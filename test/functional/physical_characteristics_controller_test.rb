require 'test_helper'

class PhysicalCharacteristicsControllerTest < ActionController::TestCase
  setup do
    @physical_characteristic = physical_characteristics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:physical_characteristics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create physical_characteristic" do
    assert_difference('PhysicalCharacteristic.count') do
      post :create, physical_characteristic: { art_id: @physical_characteristic.art_id, height: @physical_characteristic.height, volume: @physical_characteristic.volume, weight: @physical_characteristic.weight, width: @physical_characteristic.width }
    end

    assert_redirected_to physical_characteristic_path(assigns(:physical_characteristic))
  end

  test "should show physical_characteristic" do
    get :show, id: @physical_characteristic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @physical_characteristic
    assert_response :success
  end

  test "should update physical_characteristic" do
    put :update, id: @physical_characteristic, physical_characteristic: { art_id: @physical_characteristic.art_id, height: @physical_characteristic.height, volume: @physical_characteristic.volume, weight: @physical_characteristic.weight, width: @physical_characteristic.width }
    assert_redirected_to physical_characteristic_path(assigns(:physical_characteristic))
  end

  test "should destroy physical_characteristic" do
    assert_difference('PhysicalCharacteristic.count', -1) do
      delete :destroy, id: @physical_characteristic
    end

    assert_redirected_to physical_characteristics_path
  end
end
