require 'test_helper'

class User1sControllerTest < ActionController::TestCase
  setup do
    @user1 = user1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user1" do
    assert_difference('User1.count') do
      post :create, user1: { email: @user1.email, name: @user1.name, password: 'secret', password_confirmation: 'secret' }
    end

    assert_redirected_to user1_path(assigns(:user1))
  end

  test "should show user1" do
    get :show, id: @user1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user1
    assert_response :success
  end

  test "should update user1" do
    patch :update, id: @user1, user1: { email: @user1.email, name: @user1.name, password: 'secret', password_confirmation: 'secret' }
    assert_redirected_to user1_path(assigns(:user1))
  end

  test "should destroy user1" do
    assert_difference('User1.count', -1) do
      delete :destroy, id: @user1
    end

    assert_redirected_to user1s_path
  end
end
