require 'test_helper'

class ArtMovementsControllerTest < ActionController::TestCase
  setup do
    @art_movement = art_movements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_movements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_movement" do
    assert_difference('ArtMovement.count') do
      post :create, art_movement: { movement_id: @art_movement.movement_id, region: @art_movement.region, time_period_name: @art_movement.time_period_name, title: @art_movement.title, year_end: @art_movement.year_end, year_start: @art_movement.year_start }
    end

    assert_redirected_to art_movement_path(assigns(:art_movement))
  end

  test "should show art_movement" do
    get :show, id: @art_movement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_movement
    assert_response :success
  end

  test "should update art_movement" do
    put :update, id: @art_movement, art_movement: { movement_id: @art_movement.movement_id, region: @art_movement.region, time_period_name: @art_movement.time_period_name, title: @art_movement.title, year_end: @art_movement.year_end, year_start: @art_movement.year_start }
    assert_redirected_to art_movement_path(assigns(:art_movement))
  end

  test "should destroy art_movement" do
    assert_difference('ArtMovement.count', -1) do
      delete :destroy, id: @art_movement
    end

    assert_redirected_to art_movements_path
  end
end
