require 'test_helper'

class TripsControllerTest < ActionController::TestCase
  setup do
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip" do
    assert_difference('Trip.count') do
      post :create, trip: { age: @trip.age, credit_card_id: @trip.credit_card_id, end_date: @trip.end_date, first_name: @trip.first_name, last_name: @trip.last_name, place_id: @trip.place_id, start_date: @trip.start_date, total: @trip.total }
    end

    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should show trip" do
    get :show, id: @trip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip
    assert_response :success
  end

  test "should update trip" do
    put :update, id: @trip, trip: { age: @trip.age, credit_card_id: @trip.credit_card_id, end_date: @trip.end_date, first_name: @trip.first_name, last_name: @trip.last_name, place_id: @trip.place_id, start_date: @trip.start_date, total: @trip.total }
    assert_redirected_to trip_path(assigns(:trip))
  end

  test "should destroy trip" do
    assert_difference('Trip.count', -1) do
      delete :destroy, id: @trip
    end

    assert_redirected_to trips_path
  end
end
