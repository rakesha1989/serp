require 'test_helper'

class SuppliersControllerTest < ActionController::TestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supplier" do
    assert_difference('Supplier.count') do
      post :create, supplier: { address: @supplier.address, c_s_t_reg: @supplier.c_s_t_reg, info: @supplier.info, key_contact_person: @supplier.key_contact_person, name: @supplier.name, p_a_n_no: @supplier.p_a_n_no, phone_number: @supplier.phone_number, t_i_n_no: @supplier.t_i_n_no }
    end

    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should show supplier" do
    get :show, id: @supplier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supplier
    assert_response :success
  end

  test "should update supplier" do
    patch :update, id: @supplier, supplier: { address: @supplier.address, c_s_t_reg: @supplier.c_s_t_reg, info: @supplier.info, key_contact_person: @supplier.key_contact_person, name: @supplier.name, p_a_n_no: @supplier.p_a_n_no, phone_number: @supplier.phone_number, t_i_n_no: @supplier.t_i_n_no }
    assert_redirected_to supplier_path(assigns(:supplier))
  end

  test "should destroy supplier" do
    assert_difference('Supplier.count', -1) do
      delete :destroy, id: @supplier
    end

    assert_redirected_to suppliers_path
  end
end
