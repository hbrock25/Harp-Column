require 'test_helper'

class HarpsControllerTest < ActionController::TestCase
  setup do
    @harp = harps(:one)
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in users(:user1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:harps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create harp" do
    assert_difference('Harp.count') do
      post :create, :harp => @harp.attributes
    end

    assert_redirected_to harp_path(assigns(:harp))
  end

  test "should show harp" do
    get :show, :id => @harp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @harp.to_param
    assert_response :success
  end

  test "should update harp" do
    put :update, :id => @harp.to_param, :harp => @harp.attributes
    assert_redirected_to harp_path(assigns(:harp))
  end

  test "should destroy harp" do
    assert_difference('Harp.count', -1) do
      delete :destroy, :id => @harp.to_param
    end

    assert_redirected_to harps_path
  end
end
