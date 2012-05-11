class PurchaseOrder < ActiveRecord::Base
  has_many :purchase_order_items, :include => :product, :dependent => :destroy
  
  def total_price
     purchase_order_items.inject(0){|sum, o| sum + o.price}
  end
   
end
