require 'test_helper'

class RollesControllerTest < ActionController::TestCase
  setup do
    @rolle = rolles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rolles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rolle" do
    assert_difference('Rolle.count') do
      post :create, rolle: {  }
    end

    assert_redirected_to rolle_path(assigns(:rolle))
  end

  test "should show rolle" do
    get :show, id: @rolle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rolle
    assert_response :success
  end

  test "should update rolle" do
    patch :update, id: @rolle, rolle: {  }
    assert_redirected_to rolle_path(assigns(:rolle))
  end

  test "should destroy rolle" do
    assert_difference('Rolle.count', -1) do
      delete :destroy, id: @rolle
    end

    assert_redirected_to rolles_path
  end
end
