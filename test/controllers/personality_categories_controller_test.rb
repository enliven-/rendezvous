require 'test_helper'

class PersonalityCategoriesControllerTest < ActionController::TestCase
  setup do
    @personality_category = personality_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:personality_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create personality_category" do
    assert_difference('PersonalityCategory.count') do
      post :create, personality_category: { label: @personality_category.label }
    end

    assert_redirected_to personality_category_path(assigns(:personality_category))
  end

  test "should show personality_category" do
    get :show, id: @personality_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @personality_category
    assert_response :success
  end

  test "should update personality_category" do
    patch :update, id: @personality_category, personality_category: { label: @personality_category.label }
    assert_redirected_to personality_category_path(assigns(:personality_category))
  end

  test "should destroy personality_category" do
    assert_difference('PersonalityCategory.count', -1) do
      delete :destroy, id: @personality_category
    end

    assert_redirected_to personality_categories_path
  end
end
