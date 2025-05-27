class Api::OrdersController < Api::BaseController
  def create
    @order = Order.new(order_params)

    return render status: :created if @order.save

    render_errors @order.errors.full_messages
  end

  private

  def order_params
    params.permit(:total, details: {})
  end
end
