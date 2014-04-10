require 'test_helper'

class HeartedsControllerTest < ActionController::TestCase
  setup do
    @hearted = hearteds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hearteds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hearted" do
    assert_difference('Hearted.count') do
      post :create, hearted: { match_time: @hearted.match_time, matched: @hearted.matched, notification_time: @hearted.notification_time, userx_heart_time: @hearted.userx_heart_time, userx_id: @hearted.userx_id, usery_heart_time: @hearted.usery_heart_time, usery_id: @hearted.usery_id }
    end

    assert_redirected_to hearted_path(assigns(:hearted))
  end

  test "should show hearted" do
    get :show, id: @hearted
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hearted
    assert_response :success
  end

  test "should update hearted" do
    patch :update, id: @hearted, hearted: { match_time: @hearted.match_time, matched: @hearted.matched, notification_time: @hearted.notification_time, userx_heart_time: @hearted.userx_heart_time, userx_id: @hearted.userx_id, usery_heart_time: @hearted.usery_heart_time, usery_id: @hearted.usery_id }
    assert_redirected_to hearted_path(assigns(:hearted))
  end

  test "should destroy hearted" do
    assert_difference('Hearted.count', -1) do
      delete :destroy, id: @hearted
    end

    assert_redirected_to hearteds_path
  end
end
