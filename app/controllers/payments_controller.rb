class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
    @expenses = Expense.all
    @payment = Payment.new
    @expense = Expense.new
  end

  def new
    @payment = Payment.new
    @expense = Expense.new
  end

  def create
    @payment = Payment.new(payment_params)
    @expense = Expense.new(expense_params)
    if @payment.save || @expense.save
      redirect_to root_path(@payment, @expense)
    else
      render :index
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:price, :category_id, :memo).merge(user_id: current_user.id)
  end

  def expense_params
    params.require(:expense).permit(:price, :category_id, :memo).merge(user_id: current_user.id)
  end
end
