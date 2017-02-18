require 'test_helper'

class GardenInventoriesControllerTest < ActionController::TestCase
  setup do
    @garden_inventory = garden_inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garden_inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garden_inventory" do
    assert_difference('GardenInventory.count') do
      post :create, garden_inventory: { Count: @garden_inventory.Count, GardenName: @garden_inventory.GardenName, ToolName: @garden_inventory.ToolName }
    end

    assert_redirected_to garden_inventory_path(assigns(:garden_inventory))
  end

  test "should show garden_inventory" do
    get :show, id: @garden_inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garden_inventory
    assert_response :success
  end

  test "should update garden_inventory" do
    patch :update, id: @garden_inventory, garden_inventory: { Count: @garden_inventory.Count, GardenName: @garden_inventory.GardenName, ToolName: @garden_inventory.ToolName }
    assert_redirected_to garden_inventory_path(assigns(:garden_inventory))
  end

  test "should destroy garden_inventory" do
    assert_difference('GardenInventory.count', -1) do
      delete :destroy, id: @garden_inventory
    end

    assert_redirected_to garden_inventories_path
  end
end
