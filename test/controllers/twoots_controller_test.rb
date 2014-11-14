require 'test_helper'

class TwootsControllerTest < ActionController::TestCase
  setup do
    @twoot = twoots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twoots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twoot" do
    assert_difference('Twoot.count') do
      post :create, twoot: { content: @twoot.content, user_id: @twoot.user_id }
    end

    assert_redirected_to twoot_path(assigns(:twoot))
  end

  test "should show twoot" do
    get :show, id: @twoot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twoot
    assert_response :success
  end

  test "should update twoot" do
    patch :update, id: @twoot, twoot: { content: @twoot.content, user_id: @twoot.user_id }
    assert_redirected_to twoot_path(assigns(:twoot))
  end

  test "should destroy twoot" do
    assert_difference('Twoot.count', -1) do
      delete :destroy, id: @twoot
    end

    assert_redirected_to twoots_path
  end
end
