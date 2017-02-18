require 'test_helper'

class SubOrganizationsControllerTest < ActionController::TestCase
  setup do
    @sub_organization = sub_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_organization" do
    assert_difference('SubOrganization.count') do
      post :create, sub_organization: { Description: @sub_organization.Description, OrganizationName: @sub_organization.OrganizationName, SubOrganizationName: @sub_organization.SubOrganizationName }
    end

    assert_redirected_to sub_organization_path(assigns(:sub_organization))
  end

  test "should show sub_organization" do
    get :show, id: @sub_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_organization
    assert_response :success
  end

  test "should update sub_organization" do
    patch :update, id: @sub_organization, sub_organization: { Description: @sub_organization.Description, OrganizationName: @sub_organization.OrganizationName, SubOrganizationName: @sub_organization.SubOrganizationName }
    assert_redirected_to sub_organization_path(assigns(:sub_organization))
  end

  test "should destroy sub_organization" do
    assert_difference('SubOrganization.count', -1) do
      delete :destroy, id: @sub_organization
    end

    assert_redirected_to sub_organizations_path
  end
end
