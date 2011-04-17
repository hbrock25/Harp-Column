require 'test_helper'

class HcUsersControllerTest < ActionController::TestCase
  setup do
    @hc_user = users(:user1)
  end

  # test "should get index" do
  #   get :index
  #   assert_response :success
  #   assert_not_nil assigns(:hc_users)
  # end

  # test "should get new" do
  #   get :new
  #   assert_response :success
  # end

  # test "should create hc_user" do
  #   assert_difference('HcUser.count') do
  #     post :create, :hc_user => @hc_user.attributes
  #   end

  #   assert_redirected_to hc_user_path(assigns(:hc_user))
  # end

  # test "should show hc_user" do
  #   get :show, :id => @hc_user.to_param
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get :edit, :id => @hc_user.to_param
  #   assert_response :success
  # end

  # test "should update hc_user" do
  #   put :update, :id => @hc_user.to_param, :hc_user => @hc_user.attributes
  #   assert_redirected_to hc_user_path(assigns(:hc_user))
  # end

  # test "should destroy hc_user" do
  #   assert_difference('HcUser.count', -1) do
  #     delete :destroy, :id => @hc_user.to_param
  #   end

  #   assert_redirected_to hc_users_path
  # end
end
