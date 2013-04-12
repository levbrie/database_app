require 'test_helper'

class ArtworkFeaturedInExhibitionsControllerTest < ActionController::TestCase
  setup do
    @artwork_featured_in_exhibition = artwork_featured_in_exhibitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_featured_in_exhibitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_featured_in_exhibition" do
    assert_difference('ArtworkFeaturedInExhibition.count') do
      post :create, artwork_featured_in_exhibition: { art_id: @artwork_featured_in_exhibition.art_id, exhibition_id: @artwork_featured_in_exhibition.exhibition_id }
    end

    assert_redirected_to artwork_featured_in_exhibition_path(assigns(:artwork_featured_in_exhibition))
  end

  test "should show artwork_featured_in_exhibition" do
    get :show, id: @artwork_featured_in_exhibition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_featured_in_exhibition
    assert_response :success
  end

  test "should update artwork_featured_in_exhibition" do
    put :update, id: @artwork_featured_in_exhibition, artwork_featured_in_exhibition: { art_id: @artwork_featured_in_exhibition.art_id, exhibition_id: @artwork_featured_in_exhibition.exhibition_id }
    assert_redirected_to artwork_featured_in_exhibition_path(assigns(:artwork_featured_in_exhibition))
  end

  test "should destroy artwork_featured_in_exhibition" do
    assert_difference('ArtworkFeaturedInExhibition.count', -1) do
      delete :destroy, id: @artwork_featured_in_exhibition
    end

    assert_redirected_to artwork_featured_in_exhibitions_path
  end
end
