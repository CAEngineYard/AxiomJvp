require 'test_helper'

class Login2sControllerTest < ActionController::TestCase
  setup do
    @login2 = login2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login2" do
    assert_difference('Login2.count') do
      post :create, login2: { password: @login2.password, userid: @login2.userid }
    end

    assert_redirected_to login2_path(assigns(:login2))
  end

  test "should show login2" do
    get :show, id: @login2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login2
    assert_response :success
  end

  test "should update login2" do
    put :update, id: @login2, login2: { password: @login2.password, userid: @login2.userid }
    assert_redirected_to login2_path(assigns(:login2))
  end

  test "should destroy login2" do
    assert_difference('Login2.count', -1) do
      delete :destroy, id: @login2
    end

    assert_redirected_to login2s_path
  end
end
