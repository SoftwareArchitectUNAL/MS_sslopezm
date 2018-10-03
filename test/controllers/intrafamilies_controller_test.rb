require 'test_helper'

class IntrafamiliesControllerTest < ActionController::TestCase
  setup do
    @intrafamily = intrafamilies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:intrafamilies)
  end

  test "should create intrafamily" do
    assert_difference('Intrafamily.count') do
      post :create, intrafamily: { aggressor: @intrafamily.aggressor, criminal_complaint: @intrafamily.criminal_complaint, neighboorhood: @intrafamily.neighboorhood, victim: @intrafamily.victim }
    end

    assert_response 201
  end

  test "should show intrafamily" do
    get :show, id: @intrafamily
    assert_response :success
  end

  test "should update intrafamily" do
    put :update, id: @intrafamily, intrafamily: { aggressor: @intrafamily.aggressor, criminal_complaint: @intrafamily.criminal_complaint, neighboorhood: @intrafamily.neighboorhood, victim: @intrafamily.victim }
    assert_response 204
  end

  test "should destroy intrafamily" do
    assert_difference('Intrafamily.count', -1) do
      delete :destroy, id: @intrafamily
    end

    assert_response 204
  end
end
