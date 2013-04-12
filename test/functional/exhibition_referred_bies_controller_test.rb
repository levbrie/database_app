require 'test_helper'

class ExhibitionReferredBiesControllerTest < ActionController::TestCase
  setup do
    @exhibition_referred_by = exhibition_referred_bies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibition_referred_bies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition_referred_by" do
    assert_difference('ExhibitionReferredBy.count') do
      post :create, exhibition_referred_by: { exhibtion_id: @exhibition_referred_by.exhibtion_id, ref_id: @exhibition_referred_by.ref_id }
    end

    assert_redirected_to exhibition_referred_by_path(assigns(:exhibition_referred_by))
  end

  test "should show exhibition_referred_by" do
    get :show, id: @exhibition_referred_by
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibition_referred_by
    assert_response :success
  end

  test "should update exhibition_referred_by" do
    put :update, id: @exhibition_referred_by, exhibition_referred_by: { exhibtion_id: @exhibition_referred_by.exhibtion_id, ref_id: @exhibition_referred_by.ref_id }
    assert_redirected_to exhibition_referred_by_path(assigns(:exhibition_referred_by))
  end

  test "should destroy exhibition_referred_by" do
    assert_difference('ExhibitionReferredBy.count', -1) do
      delete :destroy, id: @exhibition_referred_by
    end

    assert_redirected_to exhibition_referred_bies_path
  end
end
