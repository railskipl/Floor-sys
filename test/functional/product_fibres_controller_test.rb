require 'test_helper'

class ProductFibresControllerTest < ActionController::TestCase
  setup do
    @product_fibre = product_fibres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_fibres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_fibre" do
    assert_difference('ProductFibre.count') do
      post :create, :product_fibre => @product_fibre.attributes
    end

    assert_redirected_to product_fibre_path(assigns(:product_fibre))
  end

  test "should show product_fibre" do
    get :show, :id => @product_fibre.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_fibre.to_param
    assert_response :success
  end

  test "should update product_fibre" do
    put :update, :id => @product_fibre.to_param, :product_fibre => @product_fibre.attributes
    assert_redirected_to product_fibre_path(assigns(:product_fibre))
  end

  test "should destroy product_fibre" do
    assert_difference('ProductFibre.count', -1) do
      delete :destroy, :id => @product_fibre.to_param
    end

    assert_redirected_to product_fibres_path
  end
end
