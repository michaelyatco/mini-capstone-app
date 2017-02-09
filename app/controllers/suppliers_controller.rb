class SuppliersController < ApplicationController

def index
    sort_attribute = params[:sort]
    order = params[:order] || "asc"
    discount = params[:discount]
    search_result = params[:search_result]
    if sort_attribute
      @suppliers = Supplier.order(sort_attribute => order)
    elsif discount
      @suppliers = Supplier.where("price < ?", discount)
    elsif search_result
      @suppliers = Supplier.where("name ILIKE ?", "%#{search_result}%")
    else
      @suppliers = Supplier.all
    end
    render "index.html.erb" 
  end

  def new
    render "new.html.erb"
  end

  def create
    @supplier = Supplier.create(name: params[:name], price: params[:price], image: params[:image], description: params[:description], supplier_id: params[:supplier_id], amount: params[:amount])
    flash[:success] = "Item has been created!"
    flash[:info] = "The item that has been created was #{@supplier.id}"
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def show
    if params[:id] == "random"
      @supplier = Supplier.all.sample
    else
      @supplier = Supplier.find_by(id: params[:id])
      render "show.html.erb"
    end
  end

  def edit
    @supplier = Supplier.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.assign_attributes(name: params[:name], price: params[:price], image: params[:images], description: params[:description], supplier_id: params[:supplier_id], amount: params[:amount])
    @supplier.save
    flash[:success] = "Item has been updated!"
    flash[:info] = "The item that has been updated was #{@supplier.id}"
    redirect_to "/suppliers/#{@supplier.id}"
  end

  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.destroy
    flash[:danger] = "Item has been deleted!"
    flash[:warning] = "The item that has been deleted was #{@supplier.id}"
    redirect_to "/suppliers"
  end

end
