require 'test_helper'

class EventRolesControllerTest < ActionController::TestCase
  setup do
    @event_role = event_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_role" do
    assert_difference('EventRole.count') do
      post :create, event_role: { Description: @event_role.Description, EventRole: @event_role.EventRole }
    end

    assert_redirected_to event_role_path(assigns(:event_role))
  end

  test "should show event_role" do
    get :show, id: @event_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_role
    assert_response :success
  end

  test "should update event_role" do
    patch :update, id: @event_role, event_role: { Description: @event_role.Description, EventRole: @event_role.EventRole }
    assert_redirected_to event_role_path(assigns(:event_role))
  end

  test "should destroy event_role" do
    assert_difference('EventRole.count', -1) do
      delete :destroy, id: @event_role
    end

    assert_redirected_to event_roles_path
  end
end
