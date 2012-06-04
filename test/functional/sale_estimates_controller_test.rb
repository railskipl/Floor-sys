require 'test_helper'

class SaleEstimatesControllerTest < ActionController::TestCase
  setup do
    @sale_estimate = sale_estimates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_estimates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_estimate" do
    assert_difference('SaleEstimate.count') do
      post :create, :sale_estimate => @sale_estimate.attributes
    end

    assert_redirected_to sale_estimate_path(assigns(:sale_estimate))
  end

  test "should show sale_estimate" do
    get :show, :id => @sale_estimate.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sale_estimate.to_param
    assert_response :success
  end

  test "should update sale_estimate" do
    put :update, :id => @sale_estimate.to_param, :sale_estimate => @sale_estimate.attributes
    assert_redirected_to sale_estimate_path(assigns(:sale_estimate))
  end

  test "should destroy sale_estimate" do
    assert_difference('SaleEstimate.count', -1) do
      delete :destroy, :id => @sale_estimate.to_param
    end

    assert_redirected_to sale_estimates_path
  end
end
