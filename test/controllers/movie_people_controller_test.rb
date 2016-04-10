require 'test_helper'

class MoviePeopleControllerTest < ActionController::TestCase
  setup do
    @movie_person = movie_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_person" do
    assert_difference('MoviePerson.count') do
      post :create, movie_person: { movie_id: @movie_person.movie_id, person_id: @movie_person.person_id, role: @movie_person.role }
    end

    assert_redirected_to movie_person_path(assigns(:movie_person))
  end

  test "should show movie_person" do
    get :show, id: @movie_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_person
    assert_response :success
  end

  test "should update movie_person" do
    patch :update, id: @movie_person, movie_person: { movie_id: @movie_person.movie_id, person_id: @movie_person.person_id, role: @movie_person.role }
    assert_redirected_to movie_person_path(assigns(:movie_person))
  end

  test "should destroy movie_person" do
    assert_difference('MoviePerson.count', -1) do
      delete :destroy, id: @movie_person
    end

    assert_redirected_to movie_people_path
  end
end
