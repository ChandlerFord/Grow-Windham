require 'test_helper'

class PeopleOrganizationsControllerTest < ActionController::TestCase
  setup do
    @people_organization = people_organizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_organizations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_organization" do
    assert_difference('PeopleOrganization.count') do
      post :create, people_organization: { OrganizationName: @people_organization.OrganizationName, PersonalID: @people_organization.PersonalID }
    end

    assert_redirected_to people_organization_path(assigns(:people_organization))
  end

  test "should show people_organization" do
    get :show, id: @people_organization
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_organization
    assert_response :success
  end

  test "should update people_organization" do
    patch :update, id: @people_organization, people_organization: { OrganizationName: @people_organization.OrganizationName, PersonalID: @people_organization.PersonalID }
    assert_redirected_to people_organization_path(assigns(:people_organization))
  end

  test "should destroy people_organization" do
    assert_difference('PeopleOrganization.count', -1) do
      delete :destroy, id: @people_organization
    end

    assert_redirected_to people_organizations_path
  end
end
