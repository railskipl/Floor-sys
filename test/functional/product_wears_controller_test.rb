require 'test_helper'

class ProductWearsControllerTest < ActionController::TestCase
  setup do
    @product_wear = product_wears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_wears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_wear" do
    assert_difference('ProductWear.count') do
      post :create, :product_wear => @product_wear.attributes
    end

    assert_redirected_to product_wear_path(assigns(:product_wear))
  end

  test "should show product_wear" do
    get :show, :id => @product_wear.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_wear.to_param
    assert_response :success
  end

  test "should update product_wear" do
    put :update, :id => @product_wear.to_param, :product_wear => @product_wear.attributes
    assert_redirected_to product_wear_path(assigns(:product_wear))
  end

  test "should destroy product_wear" do
    assert_difference('ProductWear.count', -1) do
      delete :destroy, :id => @product_wear.to_param
    end

    assert_redirected_to product_wears_path
  end
end
