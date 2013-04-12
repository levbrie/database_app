require 'test_helper'

class ArtPartOfMovementsControllerTest < ActionController::TestCase
  setup do
    @art_part_of_movement = art_part_of_movements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_part_of_movements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_part_of_movement" do
    assert_difference('ArtPartOfMovement.count') do
      post :create, art_part_of_movement: { art_id: @art_part_of_movement.art_id, movement_id: @art_part_of_movement.movement_id }
    end

    assert_redirected_to art_part_of_movement_path(assigns(:art_part_of_movement))
  end

  test "should show art_part_of_movement" do
    get :show, id: @art_part_of_movement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_part_of_movement
    assert_response :success
  end

  test "should update art_part_of_movement" do
    put :update, id: @art_part_of_movement, art_part_of_movement: { art_id: @art_part_of_movement.art_id, movement_id: @art_part_of_movement.movement_id }
    assert_redirected_to art_part_of_movement_path(assigns(:art_part_of_movement))
  end

  test "should destroy art_part_of_movement" do
    assert_difference('ArtPartOfMovement.count', -1) do
      delete :destroy, id: @art_part_of_movement
    end

    assert_redirected_to art_part_of_movements_path
  end
end
