class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)

    if @order.save
      render json: { message: 'Order created successfully', order: @order }, status: :created
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:total, details: {})
  end
end
