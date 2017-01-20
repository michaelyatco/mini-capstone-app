class ProductsController < ApplicationController
  def products_method
    @product = Product.first
    render "products.html.erb"
  end

  def new_product_form_method
    render "new_product_form.html.erb"
  end

  def new_product_result_method
    @product = Product.new(name: params[:input_name], price: params[:input_price], image: params[:input_image], description: params[:input_description])
    @product.save
    render "new_product_result.html.erb"
  end

  def index
    @products = Product.all
    render "index.html.erb" 
  end

end
