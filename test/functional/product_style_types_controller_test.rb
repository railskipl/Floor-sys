require 'test_helper'

class ProductStyleTypesControllerTest < ActionController::TestCase
  setup do
    @product_style_type = product_style_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_style_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_style_type" do
    assert_difference('ProductStyleType.count') do
      post :create, :product_style_type => @product_style_type.attributes
    end

    assert_redirected_to product_style_type_path(assigns(:product_style_type))
  end

  test "should show product_style_type" do
    get :show, :id => @product_style_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @product_style_type.to_param
    assert_response :success
  end

  test "should update product_style_type" do
    put :update, :id => @product_style_type.to_param, :product_style_type => @product_style_type.attributes
    assert_redirected_to product_style_type_path(assigns(:product_style_type))
  end

  test "should destroy product_style_type" do
    assert_difference('ProductStyleType.count', -1) do
      delete :destroy, :id => @product_style_type.to_param
    end

    assert_redirected_to product_style_types_path
  end
end
