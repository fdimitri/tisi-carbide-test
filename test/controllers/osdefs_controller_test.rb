require 'test_helper'

class OsdefsControllerTest < ActionController::TestCase
  setup do
    @osdef = osdefs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:osdefs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create osdef" do
    assert_difference('Osdef.count') do
      post :create, osdef: { name: @osdef.name, version: @osdef.version }
    end

    assert_redirected_to osdef_path(assigns(:osdef))
  end

  test "should show osdef" do
    get :show, id: @osdef
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @osdef
    assert_response :success
  end

  test "should update osdef" do
    patch :update, id: @osdef, osdef: { name: @osdef.name, version: @osdef.version }
    assert_redirected_to osdef_path(assigns(:osdef))
  end

  test "should destroy osdef" do
    assert_difference('Osdef.count', -1) do
      delete :destroy, id: @osdef
    end

    assert_redirected_to osdefs_path
  end
end
