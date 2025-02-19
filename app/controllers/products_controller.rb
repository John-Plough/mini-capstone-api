class ProductsController < ApplicationController
  def first_product_method
    product = Product.first
    render json: { id: product.id, name: product.name, description: product.description }
  end
end
