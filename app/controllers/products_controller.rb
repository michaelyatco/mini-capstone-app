class ProductsController < ApplicationController
  def products_method
    @product = Product.first
    render "products.html.erb"
  end
end
