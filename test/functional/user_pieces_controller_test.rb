require 'test_helper'

class UserPiecesControllerTest < ActionController::TestCase
  setup do
    @user_piece = user_pieces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_pieces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_piece" do
    assert_difference('UserPiece.count') do
      post :create, :user_piece => @user_piece.attributes
    end

    assert_redirected_to user_piece_path(assigns(:user_piece))
  end

  test "should show user_piece" do
    get :show, :id => @user_piece.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_piece.to_param
    assert_response :success
  end

  test "should update user_piece" do
    put :update, :id => @user_piece.to_param, :user_piece => @user_piece.attributes
    assert_redirected_to user_piece_path(assigns(:user_piece))
  end

  test "should destroy user_piece" do
    assert_difference('UserPiece.count', -1) do
      delete :destroy, :id => @user_piece.to_param
    end

    assert_redirected_to user_pieces_path
  end
end
