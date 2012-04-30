require 'test_helper'

class ProductReqPlanningsControllerTest < ActionController::TestCase
  setup do
    @product_req_planning = product_req_plannings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_req_plannings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_req_planning" do
    assert_difference('ProductReqPlanning.count') do
      post :create, :product_req_planning => @product_req_planning.attributes
    end

    assert_redirected_to product_req_planning_path(assigns(:product_req_planning))
  end

  test "should show product_req_planning" do
    get :show, :id => @product_req_planning.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_req_planning.to_param
    assert_response :success
  end

  test "should update product_req_planning" do
    put :update, :id => @product_req_planning.to_param, :product_req_planning => @product_req_planning.attributes
    assert_redirected_to product_req_planning_path(assigns(:product_req_planning))
  end

  test "should destroy product_req_planning" do
    assert_difference('ProductReqPlanning.count', -1) do
      delete :destroy, :id => @product_req_planning.to_param
    end

    assert_redirected_to product_req_plannings_path
  end
end
