require 'test_helper'

class OlumpicmedalsControllerTest < ActionController::TestCase
  setup do
    @olumpicmedal = olumpicmedals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:olumpicmedals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create olumpicmedal" do
    assert_difference('Olumpicmedal.count') do
      post :create, olumpicmedal: { athlete_name: @olumpicmedal.athlete_name, country: @olumpicmedal.country, event: @olumpicmedal.event, event_date: @olumpicmedal.event_date, medal_type: @olumpicmedal.medal_type }
    end

    assert_redirected_to olumpicmedal_path(assigns(:olumpicmedal))
  end

  test "should show olumpicmedal" do
    get :show, id: @olumpicmedal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @olumpicmedal
    assert_response :success
  end

  test "should update olumpicmedal" do
    patch :update, id: @olumpicmedal, olumpicmedal: { athlete_name: @olumpicmedal.athlete_name, country: @olumpicmedal.country, event: @olumpicmedal.event, event_date: @olumpicmedal.event_date, medal_type: @olumpicmedal.medal_type }
    assert_redirected_to olumpicmedal_path(assigns(:olumpicmedal))
  end

  test "should destroy olumpicmedal" do
    assert_difference('Olumpicmedal.count', -1) do
      delete :destroy, id: @olumpicmedal
    end

    assert_redirected_to olumpicmedals_path
  end
end
