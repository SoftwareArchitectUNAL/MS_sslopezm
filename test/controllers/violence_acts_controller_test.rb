require 'test_helper'

class ViolenceActsControllerTest < ActionController::TestCase
  setup do
    @violence_act = violence_acts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:violence_acts)
  end

  test "should create violence_act" do
    assert_difference('ViolenceAct.count') do
      post :create, violence_act: { act_gender_id: @violence_act.act_gender_id, act_intrafamily_id: @violence_act.act_intrafamily_id, act_murder_id: @violence_act.act_murder_id, act_street_id: @violence_act.act_street_id, act_type: @violence_act.act_type }
    end

    assert_response 201
  end

  test "should show violence_act" do
    get :show, id: @violence_act
    assert_response :success
  end

  test "should update violence_act" do
    put :update, id: @violence_act, violence_act: { act_gender_id: @violence_act.act_gender_id, act_intrafamily_id: @violence_act.act_intrafamily_id, act_murder_id: @violence_act.act_murder_id, act_street_id: @violence_act.act_street_id, act_type: @violence_act.act_type }
    assert_response 204
  end

  test "should destroy violence_act" do
    assert_difference('ViolenceAct.count', -1) do
      delete :destroy, id: @violence_act
    end

    assert_response 204
  end
end
