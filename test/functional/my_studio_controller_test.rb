require 'test_helper'

class MyStudioControllerTest < ActionController::TestCase
  setup do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in users(:user1)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
