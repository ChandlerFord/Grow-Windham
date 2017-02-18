require 'test_helper'

class EmailListTypesControllerTest < ActionController::TestCase
  setup do
    @email_list_type = email_list_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_list_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_list_type" do
    assert_difference('EmailListType.count') do
      post :create, email_list_type: { ListType: @email_list_type.ListType, ListTypeDescription: @email_list_type.ListTypeDescription }
    end

    assert_redirected_to email_list_type_path(assigns(:email_list_type))
  end

  test "should show email_list_type" do
    get :show, id: @email_list_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_list_type
    assert_response :success
  end

  test "should update email_list_type" do
    patch :update, id: @email_list_type, email_list_type: { ListType: @email_list_type.ListType, ListTypeDescription: @email_list_type.ListTypeDescription }
    assert_redirected_to email_list_type_path(assigns(:email_list_type))
  end

  test "should destroy email_list_type" do
    assert_difference('EmailListType.count', -1) do
      delete :destroy, id: @email_list_type
    end

    assert_redirected_to email_list_types_path
  end
end
