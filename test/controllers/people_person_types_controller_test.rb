require 'test_helper'

class PeoplePersonTypesControllerTest < ActionController::TestCase
  setup do
    @people_person_type = people_person_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people_person_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create people_person_type" do
    assert_difference('PeoplePersonType.count') do
      post :create, people_person_type: { PersonType: @people_person_type.PersonType, PersonalID: @people_person_type.PersonalID }
    end

    assert_redirected_to people_person_type_path(assigns(:people_person_type))
  end

  test "should show people_person_type" do
    get :show, id: @people_person_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @people_person_type
    assert_response :success
  end

  test "should update people_person_type" do
    patch :update, id: @people_person_type, people_person_type: { PersonType: @people_person_type.PersonType, PersonalID: @people_person_type.PersonalID }
    assert_redirected_to people_person_type_path(assigns(:people_person_type))
  end

  test "should destroy people_person_type" do
    assert_difference('PeoplePersonType.count', -1) do
      delete :destroy, id: @people_person_type
    end

    assert_redirected_to people_person_types_path
  end
end
