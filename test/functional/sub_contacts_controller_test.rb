require 'test_helper'

class SubContactsControllerTest < ActionController::TestCase
  setup do
    @sub_contact = sub_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_contact" do
    assert_difference('SubContact.count') do
      post :create, :sub_contact => @sub_contact.attributes
    end

    assert_redirected_to sub_contact_path(assigns(:sub_contact))
  end

  test "should show sub_contact" do
    get :show, :id => @sub_contact.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sub_contact.to_param
    assert_response :success
  end

  test "should update sub_contact" do
    put :update, :id => @sub_contact.to_param, :sub_contact => @sub_contact.attributes
    assert_redirected_to sub_contact_path(assigns(:sub_contact))
  end

  test "should destroy sub_contact" do
    assert_difference('SubContact.count', -1) do
      delete :destroy, :id => @sub_contact.to_param
    end

    assert_redirected_to sub_contacts_path
  end
end
