require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, c_s_t_reg: @client.c_s_t_reg, info: @client.info, key_contact_person: @client.key_contact_person, name: @client.name, p_a_n_number: @client.p_a_n_number, phone_number: @client.phone_number, t_i_n_number: @client.t_i_n_number }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address: @client.address, c_s_t_reg: @client.c_s_t_reg, info: @client.info, key_contact_person: @client.key_contact_person, name: @client.name, p_a_n_number: @client.p_a_n_number, phone_number: @client.phone_number, t_i_n_number: @client.t_i_n_number }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
