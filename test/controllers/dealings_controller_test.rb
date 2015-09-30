require 'test_helper'

class DealingsControllerTest < ActionController::TestCase
  setup do
    @dealing = dealings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealing" do
    assert_difference('Dealing.count') do
      post :create, dealing: { amount: @dealing.amount, deal_type: @dealing.deal_type, receiver: @dealing.receiver }
    end

    assert_redirected_to dealing_path(assigns(:dealing))
  end

  test "should show dealing" do
    get :show, id: @dealing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dealing
    assert_response :success
  end

  test "should update dealing" do
    patch :update, id: @dealing, dealing: { amount: @dealing.amount, deal_type: @dealing.deal_type, receiver: @dealing.receiver }
    assert_redirected_to dealing_path(assigns(:dealing))
  end

  test "should destroy dealing" do
    assert_difference('Dealing.count', -1) do
      delete :destroy, id: @dealing
    end

    assert_redirected_to dealings_path
  end
end
