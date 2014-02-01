require 'test_helper'

class DogersControllerTest < ActionController::TestCase
  setup do
    @doger = dogers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create doger" do
    assert_difference('Doger.count') do
      post :create, doger: { awesome: @doger.awesome, color: @doger.color, name: @doger.name, wow_factor: @doger.wow_factor }
    end

    assert_redirected_to doger_path(assigns(:doger))
  end

  test "should show doger" do
    get :show, id: @doger
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @doger
    assert_response :success
  end

  test "should update doger" do
    patch :update, id: @doger, doger: { awesome: @doger.awesome, color: @doger.color, name: @doger.name, wow_factor: @doger.wow_factor }
    assert_redirected_to doger_path(assigns(:doger))
  end

  test "should destroy doger" do
    assert_difference('Doger.count', -1) do
      delete :destroy, id: @doger
    end

    assert_redirected_to dogers_path
  end
end
