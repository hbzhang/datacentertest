require 'test_helper'

class TPeopleControllerTest < ActionController::TestCase
  setup do
    @t_person = t_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_person" do
    assert_difference('TPerson.count') do
      post :create, t_person: { FIRST_NAME: @t_person.FIRST_NAME, LAST_NAME: @t_person.LAST_NAME }
    end

    assert_redirected_to t_person_path(assigns(:t_person))
  end

  test "should show t_person" do
    get :show, id: @t_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_person
    assert_response :success
  end

  test "should update t_person" do
    patch :update, id: @t_person, t_person: { FIRST_NAME: @t_person.FIRST_NAME, LAST_NAME: @t_person.LAST_NAME }
    assert_redirected_to t_person_path(assigns(:t_person))
  end

  test "should destroy t_person" do
    assert_difference('TPerson.count', -1) do
      delete :destroy, id: @t_person
    end

    assert_redirected_to t_people_path
  end
end
