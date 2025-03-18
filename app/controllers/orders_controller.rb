class OrdersController < ApplicationController
  def create
    product = Product.find_by(id: params[:product_id])
    subtotal = product.price * params[:quantity].to_i
    tax = product.tax * params[:quantity].to_i
    total = subtotal + tax

    @order = Order.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: quantity,
      subtotal: subtotal,
      tax: tax,
      total: total
    )
    render :show
  end

  def show
    @order = Order.find_by(id: params[:id])
    render :show
  end

  def index
    @orders = Order.all
    render :index
  end
end
