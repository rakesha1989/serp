require 'test_helper'

class PayBillsControllerTest < ActionController::TestCase
  setup do
    @pay_bill = pay_bills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pay_bills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pay_bill" do
    assert_difference('PayBill.count') do
      post :create, pay_bill: { amount: @pay_bill.amount, bill_no: @pay_bill.bill_no, description: @pay_bill.description, payment_date: @pay_bill.payment_date, payment_method: @pay_bill.payment_method, reference_no: @pay_bill.reference_no, supplier_id: @pay_bill.supplier_id, tax: @pay_bill.tax }
    end

    assert_redirected_to pay_bill_path(assigns(:pay_bill))
  end

  test "should show pay_bill" do
    get :show, id: @pay_bill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pay_bill
    assert_response :success
  end

  test "should update pay_bill" do
    patch :update, id: @pay_bill, pay_bill: { amount: @pay_bill.amount, bill_no: @pay_bill.bill_no, description: @pay_bill.description, payment_date: @pay_bill.payment_date, payment_method: @pay_bill.payment_method, reference_no: @pay_bill.reference_no, supplier_id: @pay_bill.supplier_id, tax: @pay_bill.tax }
    assert_redirected_to pay_bill_path(assigns(:pay_bill))
  end

  test "should destroy pay_bill" do
    assert_difference('PayBill.count', -1) do
      delete :destroy, id: @pay_bill
    end

    assert_redirected_to pay_bills_path
  end
end
