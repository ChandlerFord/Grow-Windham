require 'test_helper'

class PersontTypesControllerTest < ActionController::TestCase
  setup do
    @persont_type = persont_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:persont_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create persont_type" do
    assert_difference('PersontType.count') do
      post :create, persont_type: { PersonType: @persont_type.PersonType, PersonTypeDescription: @persont_type.PersonTypeDescription }
    end

    assert_redirected_to persont_type_path(assigns(:persont_type))
  end

  test "should show persont_type" do
    get :show, id: @persont_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @persont_type
    assert_response :success
  end

  test "should update persont_type" do
    patch :update, id: @persont_type, persont_type: { PersonType: @persont_type.PersonType, PersonTypeDescription: @persont_type.PersonTypeDescription }
    assert_redirected_to persont_type_path(assigns(:persont_type))
  end

  test "should destroy persont_type" do
    assert_difference('PersontType.count', -1) do
      delete :destroy, id: @persont_type
    end

    assert_redirected_to persont_types_path
  end
end
