require 'test_helper'

class PreOrdersControllerTest < ActionController::TestCase
  setup do
    @pre_order = pre_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_order" do
    assert_difference('PreOrder.count') do
      post :create, pre_order: { item_id: @pre_order.item_id, number: @pre_order.number, user_id: @pre_order.user_id }
    end

    assert_redirected_to pre_order_path(assigns(:pre_order))
  end

  test "should show pre_order" do
    get :show, id: @pre_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_order
    assert_response :success
  end

  test "should update pre_order" do
    put :update, id: @pre_order, pre_order: { item_id: @pre_order.item_id, number: @pre_order.number, user_id: @pre_order.user_id }
    assert_redirected_to pre_order_path(assigns(:pre_order))
  end

  test "should destroy pre_order" do
    assert_difference('PreOrder.count', -1) do
      delete :destroy, id: @pre_order
    end

    assert_redirected_to pre_orders_path
  end
end
