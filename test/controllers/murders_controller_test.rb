require 'test_helper'

class MurdersControllerTest < ActionController::TestCase
  setup do
    @murder = murders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:murders)
  end

  test "should create murder" do
    assert_difference('Murder.count') do
      post :create, murder: { body_count: @murder.body_count, description: @murder.description, locality: @murder.locality }
    end

    assert_response 201
  end

  test "should show murder" do
    get :show, id: @murder
    assert_response :success
  end

  test "should update murder" do
    put :update, id: @murder, murder: { body_count: @murder.body_count, description: @murder.description, locality: @murder.locality }
    assert_response 204
  end

  test "should destroy murder" do
    assert_difference('Murder.count', -1) do
      delete :destroy, id: @murder
    end

    assert_response 204
  end
end
