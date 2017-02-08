class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id], status: "carted")
    carted_product.save
    redirect_to "/carted_products"
  end

  def index
    @carted_products = current_user.carted_products.where(status: "carted")
    if @carted_products.any?
      render "index.html.erb"
    else
      redirect_to "/products"
    end
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.update(status: "removed")
    flash[:danger] = "Item has been removed!"
    flash[:warning] = "The item that has been removed was #{@carted_product.id}"
    @carted_product.save
    redirect_to "/carted_products"
  end
end
