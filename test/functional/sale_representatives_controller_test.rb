require 'test_helper'

class SaleRepresentativesControllerTest < ActionController::TestCase
  setup do
    @sale_representative = sale_representatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sale_representatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sale_representative" do
    assert_difference('SaleRepresentative.count') do
      post :create, :sale_representative => @sale_representative.attributes
    end

    assert_redirected_to sale_representative_path(assigns(:sale_representative))
  end

  test "should show sale_representative" do
    get :show, :id => @sale_representative.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sale_representative.to_param
    assert_response :success
  end

  test "should update sale_representative" do
    put :update, :id => @sale_representative.to_param, :sale_representative => @sale_representative.attributes
    assert_redirected_to sale_representative_path(assigns(:sale_representative))
  end

  test "should destroy sale_representative" do
    assert_difference('SaleRepresentative.count', -1) do
      delete :destroy, :id => @sale_representative.to_param
    end

    assert_redirected_to sale_representatives_path
  end
end
