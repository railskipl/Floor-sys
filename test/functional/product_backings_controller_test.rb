require 'test_helper'

class ProductBackingsControllerTest < ActionController::TestCase
  setup do
    @product_backing = product_backings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_backings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_backing" do
    assert_difference('ProductBacking.count') do
      post :create, :product_backing => @product_backing.attributes
    end

    assert_redirected_to product_backing_path(assigns(:product_backing))
  end

  test "should show product_backing" do
    get :show, :id => @product_backing.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_backing.to_param
    assert_response :success
  end

  test "should update product_backing" do
    put :update, :id => @product_backing.to_param, :product_backing => @product_backing.attributes
    assert_redirected_to product_backing_path(assigns(:product_backing))
  end

  test "should destroy product_backing" do
    assert_difference('ProductBacking.count', -1) do
      delete :destroy, :id => @product_backing.to_param
    end

    assert_redirected_to product_backings_path
  end
end
