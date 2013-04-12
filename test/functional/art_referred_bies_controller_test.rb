require 'test_helper'

class ArtReferredBiesControllerTest < ActionController::TestCase
  setup do
    @art_referred_by = art_referred_bies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_referred_bies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_referred_by" do
    assert_difference('ArtReferredBy.count') do
      post :create, art_referred_by: { art_id: @art_referred_by.art_id, ref_id: @art_referred_by.ref_id }
    end

    assert_redirected_to art_referred_by_path(assigns(:art_referred_by))
  end

  test "should show art_referred_by" do
    get :show, id: @art_referred_by
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_referred_by
    assert_response :success
  end

  test "should update art_referred_by" do
    put :update, id: @art_referred_by, art_referred_by: { art_id: @art_referred_by.art_id, ref_id: @art_referred_by.ref_id }
    assert_redirected_to art_referred_by_path(assigns(:art_referred_by))
  end

  test "should destroy art_referred_by" do
    assert_difference('ArtReferredBy.count', -1) do
      delete :destroy, id: @art_referred_by
    end

    assert_redirected_to art_referred_bies_path
  end
end
