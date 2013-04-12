require 'test_helper'

class ArtworkCreatedBiesControllerTest < ActionController::TestCase
  setup do
    @artwork_created_by = artwork_created_bies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_created_bies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_created_by" do
    assert_difference('ArtworkCreatedBy.count') do
      post :create, artwork_created_by: { art_id: @artwork_created_by.art_id, artist_id: @artwork_created_by.artist_id }
    end

    assert_redirected_to artwork_created_by_path(assigns(:artwork_created_by))
  end

  test "should show artwork_created_by" do
    get :show, id: @artwork_created_by
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_created_by
    assert_response :success
  end

  test "should update artwork_created_by" do
    put :update, id: @artwork_created_by, artwork_created_by: { art_id: @artwork_created_by.art_id, artist_id: @artwork_created_by.artist_id }
    assert_redirected_to artwork_created_by_path(assigns(:artwork_created_by))
  end

  test "should destroy artwork_created_by" do
    assert_difference('ArtworkCreatedBy.count', -1) do
      delete :destroy, id: @artwork_created_by
    end

    assert_redirected_to artwork_created_bies_path
  end
end
