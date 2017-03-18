require 'test_helper'

class ResourcesControllerTest < ActionController::TestCase
  setup do
    @resource = resources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource" do
    assert_difference('Resource.count') do
      post :create, resource: { Description: @resource.Description, DestinationOrganization: @resource.DestinationOrganization, DestinationPersonalID: @resource.DestinationPersonalID, MonetaryValue: @resource.MonetaryValue, NonMonetaryValue: @resource.NonMonetaryValue, ResourceName: @resource.ResourceName, ResourceOrganization: @resource.ResourceOrganization, ResourcePersonalID: @resource.ResourcePersonalID, ResourceTransaction: @resource.ResourceTransaction, ResourceType: @resource.ResourceType, TransactionDate: @resource.TransactionDate }
    end

    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should show resource" do
    get :show, id: @resource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource
    assert_response :success
  end

  test "should update resource" do
    patch :update, id: @resource, resource: { Description: @resource.Description, DestinationOrganization: @resource.DestinationOrganization, DestinationPersonalID: @resource.DestinationPersonalID, MonetaryValue: @resource.MonetaryValue, NonMonetaryValue: @resource.NonMonetaryValue, ResourceName: @resource.ResourceName, ResourceOrganization: @resource.ResourceOrganization, ResourcePersonalID: @resource.ResourcePersonalID, ResourceTransaction: @resource.ResourceTransaction, ResourceType: @resource.ResourceType, TransactionDate: @resource.TransactionDate }
    assert_redirected_to resource_path(assigns(:resource))
  end

  test "should destroy resource" do
    assert_difference('Resource.count', -1) do
      delete :destroy, id: @resource
    end

    assert_redirected_to resources_path
  end
end
