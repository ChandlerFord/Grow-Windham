require 'test_helper'

class EmailListTypePeopleControllerTest < ActionController::TestCase
  setup do
    @email_list_type_person = email_list_type_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:email_list_type_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create email_list_type_person" do
    assert_difference('EmailListTypePerson.count') do
      post :create, email_list_type_person: { EmailListType: @email_list_type_person.EmailListType, PersonalID: @email_list_type_person.PersonalID }
    end

    assert_redirected_to email_list_type_person_path(assigns(:email_list_type_person))
  end

  test "should show email_list_type_person" do
    get :show, id: @email_list_type_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @email_list_type_person
    assert_response :success
  end

  test "should update email_list_type_person" do
    patch :update, id: @email_list_type_person, email_list_type_person: { EmailListType: @email_list_type_person.EmailListType, PersonalID: @email_list_type_person.PersonalID }
    assert_redirected_to email_list_type_person_path(assigns(:email_list_type_person))
  end

  test "should destroy email_list_type_person" do
    assert_difference('EmailListTypePerson.count', -1) do
      delete :destroy, id: @email_list_type_person
    end

    assert_redirected_to email_list_type_people_path
  end
end
