class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    @order.user_id = current_user.id
    if @order.save
      SandwichMailer.send_order(current_user, @order).deliver
      flash[:notice] = "Order successfully saved"
      redirect_to root_url
    else
      flash[:alert] = "Problem saving order"
    end
  end
end