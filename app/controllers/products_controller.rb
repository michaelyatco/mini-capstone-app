class ProductsController < ApplicationController

  def index
    @products = Product.all
    render "index.html.erb" 
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description])
    flash[:success] = "Item has been created!"
    flash[:info] = "The item that has been created was #{@product.id}"
    redirect_to "/products/#{@product.id}"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.assign_attributes(name: params[:name], price: params[:price], image: params[:images], description: params[:description])
    @product.save
    flash[:success] = "Item has been updated!"
    flash[:info] = "The item that has been updated was #{@product.id}"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    flash[:danger] = "Item has been deleted!"
    flash[:warning] = "The item that has been deleted was #{@product.id}"
    redirect_to "/products"
  end
end
