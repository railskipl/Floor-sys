require 'test_helper'

class CreditControlsControllerTest < ActionController::TestCase
  setup do
    @credit_control = credit_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:credit_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credit_control" do
    assert_difference('CreditControl.count') do
      post :create, :credit_control => @credit_control.attributes
    end

    assert_redirected_to credit_control_path(assigns(:credit_control))
  end

  test "should show credit_control" do
    get :show, :id => @credit_control.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @credit_control.to_param
    assert_response :success
  end

  test "should update credit_control" do
    put :update, :id => @credit_control.to_param, :credit_control => @credit_control.attributes
    assert_redirected_to credit_control_path(assigns(:credit_control))
  end

  test "should destroy credit_control" do
    assert_difference('CreditControl.count', -1) do
      delete :destroy, :id => @credit_control.to_param
    end

    assert_redirected_to credit_controls_path
  end
end
