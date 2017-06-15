require 'test_helper'

class HousePeopleControllerTest < ActionController::TestCase
  setup do
    @house_person = house_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:house_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house_person" do
    assert_difference('HousePerson.count') do
      post :create, house_person: { house_id: @house_person.house_id, person_id: @house_person.person_id }
    end

    assert_redirected_to house_person_path(assigns(:house_person))
  end

  test "should show house_person" do
    get :show, id: @house_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @house_person
    assert_response :success
  end

  test "should update house_person" do
    patch :update, id: @house_person, house_person: { house_id: @house_person.house_id, person_id: @house_person.person_id }
    assert_redirected_to house_person_path(assigns(:house_person))
  end

  test "should destroy house_person" do
    assert_difference('HousePerson.count', -1) do
      delete :destroy, id: @house_person
    end

    assert_redirected_to house_people_path
  end
end
