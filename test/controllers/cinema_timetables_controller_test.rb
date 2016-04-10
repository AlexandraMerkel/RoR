require 'test_helper'

class CinemaTimetablesControllerTest < ActionController::TestCase
  setup do
    @cinema_timetable = cinema_timetables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cinema_timetables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cinema_timetable" do
    assert_difference('CinemaTimetable.count') do
      post :create, cinema_timetable: { cinema_id: @cinema_timetable.cinema_id, hall: @cinema_timetable.hall, movie_id: @cinema_timetable.movie_id, start: @cinema_timetable.start }
    end

    assert_redirected_to cinema_timetable_path(assigns(:cinema_timetable))
  end

  test "should show cinema_timetable" do
    get :show, id: @cinema_timetable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cinema_timetable
    assert_response :success
  end

  test "should update cinema_timetable" do
    patch :update, id: @cinema_timetable, cinema_timetable: { cinema_id: @cinema_timetable.cinema_id, hall: @cinema_timetable.hall, movie_id: @cinema_timetable.movie_id, start: @cinema_timetable.start }
    assert_redirected_to cinema_timetable_path(assigns(:cinema_timetable))
  end

  test "should destroy cinema_timetable" do
    assert_difference('CinemaTimetable.count', -1) do
      delete :destroy, id: @cinema_timetable
    end

    assert_redirected_to cinema_timetables_path
  end
end
