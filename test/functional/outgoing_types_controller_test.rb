require 'test_helper'

class OutgoingTypesControllerTest < ActionController::TestCase
  setup do
    @outgoing_type = outgoing_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outgoing_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outgoing_type" do
    assert_difference('OutgoingType.count') do
      post :create, :outgoing_type => @outgoing_type.attributes
    end

    assert_redirected_to outgoing_type_path(assigns(:outgoing_type))
  end

  test "should show outgoing_type" do
    get :show, :id => @outgoing_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @outgoing_type.to_param
    assert_response :success
  end

  test "should update outgoing_type" do
    put :update, :id => @outgoing_type.to_param, :outgoing_type => @outgoing_type.attributes
    assert_redirected_to outgoing_type_path(assigns(:outgoing_type))
  end

  test "should destroy outgoing_type" do
    assert_difference('OutgoingType.count', -1) do
      delete :destroy, :id => @outgoing_type.to_param
    end

    assert_redirected_to outgoing_types_path
  end
end
