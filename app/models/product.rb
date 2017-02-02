class Product < ApplicationRecord
  belongs_to :supplier 
  has_many :images
  has_many :orders
  
  def friendly_time
    created_at.strftime("%b %d, %Y")
  end

  def sale_message
    "Discount Item!" if price.to_i <= 90
    "Everyday Item!" if price.to_i >= 91
  end

  def tax
    price.to_i * 0.09
  end

  def total
    tax + price.to_i
  end

end
