class OrdersController < ApplicationController

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    order = Order.new(user_id: current_user.id)
    order.calculate_absolute_total(carted_products)
    order.save  
    carted_products.update_all(status: "purchased", order_id: order.id)
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])  #You need the instance variable @ to pass onto "show.html.erb"
    @carted_products = CartedProduct.where(user_id: @order.user_id)
    if @order.user == current_user
      render "show.html.erb"
    else
      flash[:warning] = "Grumble grumble. One who does not have proper clearance must go away!"
      redirect_to "/"
    end
  end

end
