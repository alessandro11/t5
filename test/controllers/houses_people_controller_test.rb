require 'test_helper'

class HousesPeopleControllerTest < ActionController::TestCase
  setup do
    @houses_person = houses_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:houses_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create houses_person" do
    assert_difference('HousesPeople.count') do
      post :create, houses_person: { house_id: @houses_person.house_id, person_id: @houses_person.person_id }
    end

    assert_redirected_to houses_person_path(assigns(:houses_person))
  end

  test "should show houses_person" do
    get :show, id: @houses_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @houses_person
    assert_response :success
  end

  test "should update houses_person" do
    patch :update, id: @houses_person, houses_person: { house_id: @houses_person.house_id, person_id: @houses_person.person_id }
    assert_redirected_to houses_person_path(assigns(:houses_person))
  end

  test "should destroy houses_person" do
    assert_difference('HousesPeople.count', -1) do
      delete :destroy, id: @houses_person
    end

    assert_redirected_to houses_people_path
  end
end
