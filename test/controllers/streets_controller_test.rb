require 'test_helper'

class StreetsControllerTest < ActionController::TestCase
  setup do
    @street = streets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:streets)
  end

  test "should create street" do
    assert_difference('Street.count') do
      post :create, street: { body_count: @street.body_count, description: @street.description, locality: @street.locality, type: @street.type }
    end

    assert_response 201
  end

  test "should show street" do
    get :show, id: @street
    assert_response :success
  end

  test "should update street" do
    put :update, id: @street, street: { body_count: @street.body_count, description: @street.description, locality: @street.locality, type: @street.type }
    assert_response 204
  end

  test "should destroy street" do
    assert_difference('Street.count', -1) do
      delete :destroy, id: @street
    end

    assert_response 204
  end
end
