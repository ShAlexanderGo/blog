require 'test_helper'

class SecpostsControllerTest < ActionController::TestCase
  setup do
    @secpost = secposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secpost" do
    assert_difference('Secpost.count') do
      post :create, secpost: { body: @secpost.body, title: @secpost.title, user_id: @secpost.user_id }
    end

    assert_redirected_to secpost_path(assigns(:secpost))
  end

  test "should show secpost" do
    get :show, id: @secpost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secpost
    assert_response :success
  end

  test "should update secpost" do
    patch :update, id: @secpost, secpost: { body: @secpost.body, title: @secpost.title, user_id: @secpost.user_id }
    assert_redirected_to secpost_path(assigns(:secpost))
  end

  test "should destroy secpost" do
    assert_difference('Secpost.count', -1) do
      delete :destroy, id: @secpost
    end

    assert_redirected_to secposts_path
  end
end
