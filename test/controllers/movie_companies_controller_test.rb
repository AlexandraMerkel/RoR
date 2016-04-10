require 'test_helper'

class MovieCompaniesControllerTest < ActionController::TestCase
  setup do
    @movie_company = movie_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_company" do
    assert_difference('MovieCompany.count') do
      post :create, movie_company: { name: @movie_company.name }
    end

    assert_redirected_to movie_company_path(assigns(:movie_company))
  end

  test "should show movie_company" do
    get :show, id: @movie_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_company
    assert_response :success
  end

  test "should update movie_company" do
    patch :update, id: @movie_company, movie_company: { name: @movie_company.name }
    assert_redirected_to movie_company_path(assigns(:movie_company))
  end

  test "should destroy movie_company" do
    assert_difference('MovieCompany.count', -1) do
      delete :destroy, id: @movie_company
    end

    assert_redirected_to movie_companies_path
  end
end
