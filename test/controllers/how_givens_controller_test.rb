require 'test_helper'

class HowGivensControllerTest < ActionController::TestCase
  setup do
    @how_given = how_givens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_givens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_given" do
    assert_difference('HowGiven.count') do
      post :create, how_given: { HowGiven: @how_given.HowGiven, HowGivenDescription: @how_given.HowGivenDescription }
    end

    assert_redirected_to how_given_path(assigns(:how_given))
  end

  test "should show how_given" do
    get :show, id: @how_given
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_given
    assert_response :success
  end

  test "should update how_given" do
    patch :update, id: @how_given, how_given: { HowGiven: @how_given.HowGiven, HowGivenDescription: @how_given.HowGivenDescription }
    assert_redirected_to how_given_path(assigns(:how_given))
  end

  test "should destroy how_given" do
    assert_difference('HowGiven.count', -1) do
      delete :destroy, id: @how_given
    end

    assert_redirected_to how_givens_path
  end
end
