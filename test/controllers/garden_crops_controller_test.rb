require 'test_helper'

class GardenCropsControllerTest < ActionController::TestCase
  setup do
    @garden_crop = garden_crops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garden_crops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garden_crop" do
    assert_difference('GardenCrop.count') do
      post :create, garden_crop: { CropName: @garden_crop.CropName, DateHarvested: @garden_crop.DateHarvested, GardenName: @garden_crop.GardenName, PoundsHarvested: @garden_crop.PoundsHarvested }
    end

    assert_redirected_to garden_crop_path(assigns(:garden_crop))
  end

  test "should show garden_crop" do
    get :show, id: @garden_crop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garden_crop
    assert_response :success
  end

  test "should update garden_crop" do
    patch :update, id: @garden_crop, garden_crop: { CropName: @garden_crop.CropName, DateHarvested: @garden_crop.DateHarvested, GardenName: @garden_crop.GardenName, PoundsHarvested: @garden_crop.PoundsHarvested }
    assert_redirected_to garden_crop_path(assigns(:garden_crop))
  end

  test "should destroy garden_crop" do
    assert_difference('GardenCrop.count', -1) do
      delete :destroy, id: @garden_crop
    end

    assert_redirected_to garden_crops_path
  end
end
