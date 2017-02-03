class OrdersController < ApplicationController

  def create
    order = Order.new(quantity: params[:quantity], user_id: current_user.id, product_id: params[:product_id])
    puts "order product:"
    puts order.product
    order.calculate_absolute_total
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])  #You need the instance variable @ to pass onto "show.html.erb"
    if current_user && current_user == @order.user
      render "show.html.erb"
    else
      flash[:warning] = "Grumble grumble. One who does not have proper clearance must go away!"
      redirect_to "/"
    end
  end

end
