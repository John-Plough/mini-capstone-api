class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render :index
  end

  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")

    calc_subtotal = 0
    calc_tax = 0

    carted_products.each do |carted_product|
      calc_subtotal += carted_product.product.price * carted_product.quantity
      calc_tax += carted_product.product.tax * carted_product.quantity
    end
    calc_total = calc_subtotal + calc_tax

    @order = Order.create(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total
    )
    if @order.valid?
      carted_products.each do |carted_product|
        carted_product.update(status: "purchased", order_id: @order.id)
      end
      render :show
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render :show
  end
end
