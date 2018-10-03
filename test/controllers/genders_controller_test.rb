require 'test_helper'

class GendersControllerTest < ActionController::TestCase
  setup do
    @gender = genders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:genders)
  end

  test "should create gender" do
    assert_difference('Gender.count') do
      post :create, gender: { body_count: @gender.body_count, criminal_complaint: @gender.criminal_complaint, neighboorhood: @gender.neighboorhood, type: @gender.type }
    end

    assert_response 201
  end

  test "should show gender" do
    get :show, id: @gender
    assert_response :success
  end

  test "should update gender" do
    put :update, id: @gender, gender: { body_count: @gender.body_count, criminal_complaint: @gender.criminal_complaint, neighboorhood: @gender.neighboorhood, type: @gender.type }
    assert_response 204
  end

  test "should destroy gender" do
    assert_difference('Gender.count', -1) do
      delete :destroy, id: @gender
    end

    assert_response 204
  end
end
