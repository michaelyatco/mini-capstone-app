class ProductsController < ApplicationController

  def index
    sort_attribute = params[:sort]
    order = params[:order] || "asc"
    discount = params[:discount]
    search_result = params[:search_result]
    if sort_attribute
      @products = Product.order(sort_attribute => order)
    elsif discount
      @products = Product.where("price < ?", discount)
    elsif search_result
      @products = Product.where("name ILIKE ?", "%#{search_result}%")
    elsif params[:category]
      selected_category = Category.find_by(name: params[:category])
      @products = selected_category.products
    else
      @products = Product.all
    end
    render "index.html.erb" 
  end

  def new
    if current_user && current_user.admin
      render "new.html.erb"
    else
      flash[:warning] = "Admins only. Get out!"
      redirect_to "/login"
    end
  end

  def create
    if current_user && current_user.admin
      @product = Product.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description], supplier_id: params[:supplier_id])
      flash[:success] = "Item has been created!"
      flash[:info] = "The item that has been created was #{@product.id}"
      redirect_to "/products/#{@product.id}"
    else
      flash[:warning] = "Admins only. Get out!"
      redirect_to "/login"
    end    
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
      @product = Product.find_by(id: params[:id])
      render "show.html.erb"
    end
  end

  def edit
    if current_user && current_user.admin
      @product = Product.find_by(id: params[:id])
      render "edit.html.erb"
    else
      flash[:warning] = "Admins only. Get out!"
      redirect_to "/login"
    end
  end

  def update
    if current_user && current_user.admin
      @product = Product.find_by(id: params[:id])
      @product.assign_attributes(name: params[:name], price: params[:price], image: params[:images], description: params[:description], supplier_id: params[:supplier_id])
      @product.save
      flash[:success] = "Item has been updated!"
      flash[:info] = "The item that has been updated was #{@product.id}"
      redirect_to "/products/#{@product.id}"
    else
      flash[:warning] = "Admins only. Get out!"
      redirect_to "/login"
    end
  end

  def destroy
    if current_user && current_user.admin
      @product = Product.find_by(id: params[:id])
      @product.destroy
      flash[:danger] = "Item has been deleted!"
      flash[:warning] = "The item that has been deleted was #{@product.id}"
      redirect_to "/products"
    else
      flash[:warning] = "Admins only. Get out!"
      redirect_to "/login"
    end
  end

end
