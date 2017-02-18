require 'test_helper'

class ProduceGivensControllerTest < ActionController::TestCase
  setup do
    @produce_given = produce_givens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produce_givens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produce_given" do
    assert_difference('ProduceGiven.count') do
      post :create, produce_given: { CropName: @produce_given.CropName, DateGive: @produce_given.DateGive, HowGiven: @produce_given.HowGiven, PoundsGiven: @produce_given.PoundsGiven, ValueGiven: @produce_given.ValueGiven }
    end

    assert_redirected_to produce_given_path(assigns(:produce_given))
  end

  test "should show produce_given" do
    get :show, id: @produce_given
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produce_given
    assert_response :success
  end

  test "should update produce_given" do
    patch :update, id: @produce_given, produce_given: { CropName: @produce_given.CropName, DateGive: @produce_given.DateGive, HowGiven: @produce_given.HowGiven, PoundsGiven: @produce_given.PoundsGiven, ValueGiven: @produce_given.ValueGiven }
    assert_redirected_to produce_given_path(assigns(:produce_given))
  end

  test "should destroy produce_given" do
    assert_difference('ProduceGiven.count', -1) do
      delete :destroy, id: @produce_given
    end

    assert_redirected_to produce_givens_path
  end
end
