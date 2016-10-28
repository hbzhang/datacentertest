require 'test_helper'

class TUserAccounTsControllerTest < ActionController::TestCase
  setup do
    @t_user_account = t_user_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_user_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_user_account" do
    assert_difference('TUserAccount.count') do
      post :create, t_user_account: {  }
    end

    assert_redirected_to t_user_account_path(assigns(:t_user_account))
  end

  test "should show t_user_account" do
    get :show, id: @t_user_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_user_account
    assert_response :success
  end

  test "should update t_user_account" do
    patch :update, id: @t_user_account, t_user_account: {  }
    assert_redirected_to t_user_account_path(assigns(:t_user_account))
  end

  test "should destroy t_user_account" do
    assert_difference('TUserAccount.count', -1) do
      delete :destroy, id: @t_user_account
    end

    assert_redirected_to t_user_accounts_path
  end
end
