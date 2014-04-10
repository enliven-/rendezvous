require 'test_helper'

class FavQuotesControllerTest < ActionController::TestCase
  setup do
    @fav_quote = fav_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fav_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fav_quote" do
    assert_difference('FavQuote.count') do
      post :create, fav_quote: { source: @fav_quote.source, text: @fav_quote.text, user_id: @fav_quote.user_id }
    end

    assert_redirected_to fav_quote_path(assigns(:fav_quote))
  end

  test "should show fav_quote" do
    get :show, id: @fav_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fav_quote
    assert_response :success
  end

  test "should update fav_quote" do
    patch :update, id: @fav_quote, fav_quote: { source: @fav_quote.source, text: @fav_quote.text, user_id: @fav_quote.user_id }
    assert_redirected_to fav_quote_path(assigns(:fav_quote))
  end

  test "should destroy fav_quote" do
    assert_difference('FavQuote.count', -1) do
      delete :destroy, id: @fav_quote
    end

    assert_redirected_to fav_quotes_path
  end
end
