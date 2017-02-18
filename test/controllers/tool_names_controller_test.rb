require 'test_helper'

class ToolNamesControllerTest < ActionController::TestCase
  setup do
    @tool_name = tool_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tool_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tool_name" do
    assert_difference('ToolName.count') do
      post :create, tool_name: { Description: @tool_name.Description, ToolName: @tool_name.ToolName }
    end

    assert_redirected_to tool_name_path(assigns(:tool_name))
  end

  test "should show tool_name" do
    get :show, id: @tool_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tool_name
    assert_response :success
  end

  test "should update tool_name" do
    patch :update, id: @tool_name, tool_name: { Description: @tool_name.Description, ToolName: @tool_name.ToolName }
    assert_redirected_to tool_name_path(assigns(:tool_name))
  end

  test "should destroy tool_name" do
    assert_difference('ToolName.count', -1) do
      delete :destroy, id: @tool_name
    end

    assert_redirected_to tool_names_path
  end
end
