require 'test_helper'

class TicketUpdatesControllerTest < ActionController::TestCase
  setup do
    @ticket_update = ticket_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_update" do
    assert_difference('TicketUpdate.count') do
      post :create, ticket_update: { AssignedUser_id: @ticket_update.AssignedUser_id, Priority_id: @ticket_update.Priority_id, State_id: @ticket_update.State_id, Ticket_id: @ticket_update.Ticket_id, User_id: @ticket_update.User_id, desc: @ticket_update.desc, title: @ticket_update.title }
    end

    assert_redirected_to ticket_update_path(assigns(:ticket_update))
  end

  test "should show ticket_update" do
    get :show, id: @ticket_update
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_update
    assert_response :success
  end

  test "should update ticket_update" do
    patch :update, id: @ticket_update, ticket_update: { AssignedUser_id: @ticket_update.AssignedUser_id, Priority_id: @ticket_update.Priority_id, State_id: @ticket_update.State_id, Ticket_id: @ticket_update.Ticket_id, User_id: @ticket_update.User_id, desc: @ticket_update.desc, title: @ticket_update.title }
    assert_redirected_to ticket_update_path(assigns(:ticket_update))
  end

  test "should destroy ticket_update" do
    assert_difference('TicketUpdate.count', -1) do
      delete :destroy, id: @ticket_update
    end

    assert_redirected_to ticket_updates_path
  end
end
