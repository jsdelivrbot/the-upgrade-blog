require 'test_helper'

class UpgradeStepsControllerTest < ActionController::TestCase
  setup do
    @upgrade_step = upgrade_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upgrade_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upgrade_step" do
    assert_difference('UpgradeStep.count') do
      post :create, upgrade_step: {  }
    end

    assert_redirected_to upgrade_step_path(assigns(:upgrade_step))
  end

  test "should show upgrade_step" do
    get :show, id: @upgrade_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upgrade_step
    assert_response :success
  end

  test "should update upgrade_step" do
    patch :update, id: @upgrade_step, upgrade_step: {  }
    assert_redirected_to upgrade_step_path(assigns(:upgrade_step))
  end

  test "should destroy upgrade_step" do
    assert_difference('UpgradeStep.count', -1) do
      delete :destroy, id: @upgrade_step
    end

    assert_redirected_to upgrade_steps_path
  end
end
