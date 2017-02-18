require 'test_helper'

class CropNamesControllerTest < ActionController::TestCase
  setup do
    @crop_name = crop_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crop_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crop_name" do
    assert_difference('CropName.count') do
      post :create, crop_name: { CropName: @crop_name.CropName }
    end

    assert_redirected_to crop_name_path(assigns(:crop_name))
  end

  test "should show crop_name" do
    get :show, id: @crop_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crop_name
    assert_response :success
  end

  test "should update crop_name" do
    patch :update, id: @crop_name, crop_name: { CropName: @crop_name.CropName }
    assert_redirected_to crop_name_path(assigns(:crop_name))
  end

  test "should destroy crop_name" do
    assert_difference('CropName.count', -1) do
      delete :destroy, id: @crop_name
    end

    assert_redirected_to crop_names_path
  end
end
