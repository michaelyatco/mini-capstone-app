class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :products, through: :carted_products

  def calculate_subtotal(input_carted_products)
    subtotal = 0
    input_carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end
    self.subtotal = subtotal
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
    self.total = subtotal + tax
  end

  def calculate_absolute_total(input_carted_products)
    self.calculate_subtotal(input_carted_products)
    self.calculate_tax
    self.calculate_total 
  end

end
