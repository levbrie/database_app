require 'test_helper'

class ArtCategoriesControllerTest < ActionController::TestCase
  setup do
    @art_category = art_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:art_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create art_category" do
    assert_difference('ArtCategory.count') do
      post :create, art_category: { art_id: @art_category.art_id, cat_name: @art_category.cat_name }
    end

    assert_redirected_to art_category_path(assigns(:art_category))
  end

  test "should show art_category" do
    get :show, id: @art_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @art_category
    assert_response :success
  end

  test "should update art_category" do
    put :update, id: @art_category, art_category: { art_id: @art_category.art_id, cat_name: @art_category.cat_name }
    assert_redirected_to art_category_path(assigns(:art_category))
  end

  test "should destroy art_category" do
    assert_difference('ArtCategory.count', -1) do
      delete :destroy, id: @art_category
    end

    assert_redirected_to art_categories_path
  end
end
