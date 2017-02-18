require 'test_helper'

class EventsPeopleControllerTest < ActionController::TestCase
  setup do
    @events_person = events_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:events_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create events_person" do
    assert_difference('EventsPerson.count') do
      post :create, events_person: { EventDate: @events_person.EventDate, EventName: @events_person.EventName, EventRole: @events_person.EventRole, Grade: @events_person.Grade, HoursWorked: @events_person.HoursWorked, OrganizationName: @events_person.OrganizationName, PersonalID: @events_person.PersonalID, SubOrganizationName: @events_person.SubOrganizationName }
    end

    assert_redirected_to events_person_path(assigns(:events_person))
  end

  test "should show events_person" do
    get :show, id: @events_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @events_person
    assert_response :success
  end

  test "should update events_person" do
    patch :update, id: @events_person, events_person: { EventDate: @events_person.EventDate, EventName: @events_person.EventName, EventRole: @events_person.EventRole, Grade: @events_person.Grade, HoursWorked: @events_person.HoursWorked, OrganizationName: @events_person.OrganizationName, PersonalID: @events_person.PersonalID, SubOrganizationName: @events_person.SubOrganizationName }
    assert_redirected_to events_person_path(assigns(:events_person))
  end

  test "should destroy events_person" do
    assert_difference('EventsPerson.count', -1) do
      delete :destroy, id: @events_person
    end

    assert_redirected_to events_people_path
  end
end
