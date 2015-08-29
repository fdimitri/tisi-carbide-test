require 'test_helper'

class TicketGroupsControllerTest < ActionController::TestCase
  setup do
    @ticket_group = ticket_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_group" do
    assert_difference('TicketGroup.count') do
      post :create, ticket_group: { User_id: @ticket_group.User_id, desc: @ticket_group.desc, name: @ticket_group.name }
    end

    assert_redirected_to ticket_group_path(assigns(:ticket_group))
  end

  test "should show ticket_group" do
    get :show, id: @ticket_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_group
    assert_response :success
  end

  test "should update ticket_group" do
    patch :update, id: @ticket_group, ticket_group: { User_id: @ticket_group.User_id, desc: @ticket_group.desc, name: @ticket_group.name }
    assert_redirected_to ticket_group_path(assigns(:ticket_group))
  end

  test "should destroy ticket_group" do
    assert_difference('TicketGroup.count', -1) do
      delete :destroy, id: @ticket_group
    end

    assert_redirected_to ticket_groups_path
  end
end
