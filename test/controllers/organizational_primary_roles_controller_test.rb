require 'test_helper'

class OrganizationalPrimaryRolesControllerTest < ActionController::TestCase
  setup do
    @organizational_primary_role = organizational_primary_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organizational_primary_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organizational_primary_role" do
    assert_difference('OrganizationalPrimaryRole.count') do
      post :create, organizational_primary_role: { Description: @organizational_primary_role.Description, PrimaryRole: @organizational_primary_role.PrimaryRole }
    end

    assert_redirected_to organizational_primary_role_path(assigns(:organizational_primary_role))
  end

  test "should show organizational_primary_role" do
    get :show, id: @organizational_primary_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organizational_primary_role
    assert_response :success
  end

  test "should update organizational_primary_role" do
    patch :update, id: @organizational_primary_role, organizational_primary_role: { Description: @organizational_primary_role.Description, PrimaryRole: @organizational_primary_role.PrimaryRole }
    assert_redirected_to organizational_primary_role_path(assigns(:organizational_primary_role))
  end

  test "should destroy organizational_primary_role" do
    assert_difference('OrganizationalPrimaryRole.count', -1) do
      delete :destroy, id: @organizational_primary_role
    end

    assert_redirected_to organizational_primary_roles_path
  end
end
