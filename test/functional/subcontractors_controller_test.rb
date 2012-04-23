require 'test_helper'

class SubcontractorsControllerTest < ActionController::TestCase
  setup do
    @subcontractor = subcontractors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcontractors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcontractor" do
    assert_difference('Subcontractor.count') do
      post :create, :subcontractor => @subcontractor.attributes
    end

    assert_redirected_to subcontractor_path(assigns(:subcontractor))
  end

  test "should show subcontractor" do
    get :show, :id => @subcontractor.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @subcontractor.to_param
    assert_response :success
  end

  test "should update subcontractor" do
    put :update, :id => @subcontractor.to_param, :subcontractor => @subcontractor.attributes
    assert_redirected_to subcontractor_path(assigns(:subcontractor))
  end

  test "should destroy subcontractor" do
    assert_difference('Subcontractor.count', -1) do
      delete :destroy, :id => @subcontractor.to_param
    end

    assert_redirected_to subcontractors_path
  end
end
