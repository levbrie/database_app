require 'test_helper'

class ReferenceMaterialsControllerTest < ActionController::TestCase
  setup do
    @reference_material = reference_materials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reference_materials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reference_material" do
    assert_difference('ReferenceMaterial.count') do
      post :create, reference_material: { abstract: @reference_material.abstract, content: @reference_material.content, ref_id: @reference_material.ref_id, title: @reference_material.title, url: @reference_material.url }
    end

    assert_redirected_to reference_material_path(assigns(:reference_material))
  end

  test "should show reference_material" do
    get :show, id: @reference_material
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reference_material
    assert_response :success
  end

  test "should update reference_material" do
    put :update, id: @reference_material, reference_material: { abstract: @reference_material.abstract, content: @reference_material.content, ref_id: @reference_material.ref_id, title: @reference_material.title, url: @reference_material.url }
    assert_redirected_to reference_material_path(assigns(:reference_material))
  end

  test "should destroy reference_material" do
    assert_difference('ReferenceMaterial.count', -1) do
      delete :destroy, id: @reference_material
    end

    assert_redirected_to reference_materials_path
  end
end
