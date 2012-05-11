class Basket

  attr_reader :items
  attr_accessor :comment, :user_id

  def initialize
    @items = Array.new
  end

  def add(item)
    @items << item
  end

  def add_product_quantity(product, quantity)
    item = BasketItem.new
    item.product_id = product.id
    item.quantity = quantity
    item.product_name = product.product_name
    item.supplier_name = product.supplier_account_reference
   
    item.price = product.purchase_price
    item.total_price = product.purchase_price * item.quantity
   

    self.add(item)
  end

  def total_price
    items.inject(0){|sum, o| sum + o.total_price}
  end

  def total_gst
    items.inject(0){|sum, o| sum + o.total_gst}
  end

  def total_items
    items.inject(0){|sum, o| sum + o.quantity}
  end

end