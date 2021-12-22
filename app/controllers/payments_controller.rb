class PaymentsController < ApplicationController
  def index
    @payments = Payment.all
    @payment = Payment.new
  end

  def new
    @payment = Payment.new
  end

  def create
    @payment = Payment.new(payment_params)
    if @payment.save
      redirect_to root_path(@payment)
    else
      render :index
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:price, :category_id, :type_id, :memo).merge(user_id: current_user.id)
  end
end
