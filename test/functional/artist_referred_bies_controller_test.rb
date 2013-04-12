require 'test_helper'

class ArtistReferredBiesControllerTest < ActionController::TestCase
  setup do
    @artist_referred_by = artist_referred_bies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_referred_bies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_referred_by" do
    assert_difference('ArtistReferredBy.count') do
      post :create, artist_referred_by: { artist_id: @artist_referred_by.artist_id, ref_id: @artist_referred_by.ref_id }
    end

    assert_redirected_to artist_referred_by_path(assigns(:artist_referred_by))
  end

  test "should show artist_referred_by" do
    get :show, id: @artist_referred_by
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_referred_by
    assert_response :success
  end

  test "should update artist_referred_by" do
    put :update, id: @artist_referred_by, artist_referred_by: { artist_id: @artist_referred_by.artist_id, ref_id: @artist_referred_by.ref_id }
    assert_redirected_to artist_referred_by_path(assigns(:artist_referred_by))
  end

  test "should destroy artist_referred_by" do
    assert_difference('ArtistReferredBy.count', -1) do
      delete :destroy, id: @artist_referred_by
    end

    assert_redirected_to artist_referred_bies_path
  end
end
