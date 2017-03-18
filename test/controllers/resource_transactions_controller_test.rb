require 'test_helper'

class ResourceTransactionsControllerTest < ActionController::TestCase
  setup do
    @resource_transaction = resource_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:resource_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create resource_transaction" do
    assert_difference('ResourceTransaction.count') do
      post :create, resource_transaction: { ResourceTransaction: @resource_transaction.ResourceTransaction }
    end

    assert_redirected_to resource_transaction_path(assigns(:resource_transaction))
  end

  test "should show resource_transaction" do
    get :show, id: @resource_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @resource_transaction
    assert_response :success
  end

  test "should update resource_transaction" do
    patch :update, id: @resource_transaction, resource_transaction: { ResourceTransaction: @resource_transaction.ResourceTransaction }
    assert_redirected_to resource_transaction_path(assigns(:resource_transaction))
  end

  test "should destroy resource_transaction" do
    assert_difference('ResourceTransaction.count', -1) do
      delete :destroy, id: @resource_transaction
    end

    assert_redirected_to resource_transactions_path
  end
end
