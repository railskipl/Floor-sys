require 'test_helper'

class SaleOrdersControllerTest < ActionController::TestCase
  setup do
    @sale_order = sale_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_order" do
    assert_difference('SaleOrder.count') do
      post :create, :sale_order => @sale_order.attributes
    end

    assert_redirected_to sale_order_path(assigns(:sale_order))
  end

  test "should show sale_order" do
    get :show, :id => @sale_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sale_order.to_param
    assert_response :success
  end

  test "should update sale_order" do
    put :update, :id => @sale_order.to_param, :sale_order => @sale_order.attributes
    assert_redirected_to sale_order_path(assigns(:sale_order))
  end

  test "should destroy sale_order" do
    assert_difference('SaleOrder.count', -1) do
      delete :destroy, :id => @sale_order.to_param
    end

    assert_redirected_to sale_orders_path
  end
end
