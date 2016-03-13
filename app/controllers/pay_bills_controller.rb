class PayBillsController < ApplicationController

  load_and_authorize_resource

  before_action :set_pay_bill, only: [:show, :edit, :update, :destroy]

  # GET /pay_bills
  # GET /pay_bills.json

  def index
    @pay_bills = PayBill.all
    #@pay_bills = (current_user.role? "director") ? PayBill.all.order(payment_date: :desc)  : current_user.pay_bills.order(payment_date: :desc)
  end

  def show
    #@pay_bill = (current_user.role? "director") ? PayBill.find(params[:id]) : current_user.pay_bills.find(params[:id]) 
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "PayBill" 
      end
    end
  end
  # GET /pay_bills/1
  # GET /pay_bills/1.json


  # GET /pay_bills/new
  def new
    @pay_bill = PayBill.new
  end

  # GET /pay_bills/1/edit
  def edit
  end

  # POST /pay_bills
  # POST /pay_bills.json
  def create
    @pay_bill = PayBill.new(pay_bill_params)

    respond_to do |format|
      if @pay_bill.save
        format.html { redirect_to @pay_bill, notice: 'Pay bill was successfully created.' }
        format.json { render :show, status: :created, location: @pay_bill }
      else
        format.html { render :new }
        format.json { render json: @pay_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pay_bills/1
  # PATCH/PUT /pay_bills/1.json
  def update
    respond_to do |format|
      if @pay_bill.update(pay_bill_params)
        format.html { redirect_to @pay_bill, notice: 'Pay bill was successfully updated.' }
        format.json { render :show, status: :ok, location: @pay_bill }
      else
        format.html { render :edit }
        format.json { render json: @pay_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_bills/1
  # DELETE /pay_bills/1.json
  def destroy
    @pay_bill.destroy
    respond_to do |format|
      format.html { redirect_to pay_bills_url, notice: 'Pay bill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pay_bill
      @pay_bill = PayBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pay_bill_params
      params.require(:pay_bill).permit(:supplier_id, :payment_method, :payment_date, :bill_no, :reference_no, :description, :amount, :tax)
    end
end
