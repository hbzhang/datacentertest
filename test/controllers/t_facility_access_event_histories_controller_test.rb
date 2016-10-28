require 'test_helper'

class TFacilityAccessEventHistoriesControllerTest < ActionController::TestCase
  setup do
    @t_facility_access_event_history = t_facility_access_event_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:t_facility_access_event_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create t_facility_access_event_history" do
    assert_difference('TFacilityAccessEventHistory.count') do
      post :create, t_facility_access_event_history: { first_name: @t_facility_access_event_history.first_name, last_name: @t_facility_access_event_history.last_name, person_id: @t_facility_access_event_history.person_id }
    end

    assert_redirected_to t_facility_access_event_history_path(assigns(:t_facility_access_event_history))
  end

  test "should show t_facility_access_event_history" do
    get :show, id: @t_facility_access_event_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @t_facility_access_event_history
    assert_response :success
  end

  test "should update t_facility_access_event_history" do
    patch :update, id: @t_facility_access_event_history, t_facility_access_event_history: { first_name: @t_facility_access_event_history.first_name, last_name: @t_facility_access_event_history.last_name, person_id: @t_facility_access_event_history.person_id }
    assert_redirected_to t_facility_access_event_history_path(assigns(:t_facility_access_event_history))
  end

  test "should destroy t_facility_access_event_history" do
    assert_difference('TFacilityAccessEventHistory.count', -1) do
      delete :destroy, id: @t_facility_access_event_history
    end

    assert_redirected_to t_facility_access_event_histories_path
  end
end
