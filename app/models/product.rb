class Product < ActiveRecord::Base
  
  belongs_to :supplier
  
  has_many :product_prices, :dependent => :destroy
        accepts_nested_attributes_for :product_prices, :reject_if => lambda { |a| a[:roll_cost].blank? }, :allow_destroy => true
  
  has_many :uoms, :dependent => :destroy
        accepts_nested_attributes_for :uoms, :reject_if => lambda { |a| a[:roll_min].blank? }, :allow_destroy => true
        
  # join relationship for categories and products model
  has_and_belongs_to_many :categories
  
  delegate :name, :to => :supplier, :prefix => true
  
  scope :ordered_by_product_name, :order => 'product_name'
  

  def sale_price=(value)
    self.product_prices.build(:amount => value)
  end

  def sale_price (time=Time.now)
    all_prices = ProductPrice.find_all_by_product_id(self.id, :order => 'created_at ASC')
    if all_prices.size > 0
      find_price_at_time(all_prices, time)
    else
      BigDecimal("0.0")
    end
  end

  def find_price_at_time(prices, time)
    price = prices.first
    prices.each do |product_price|
      price = product_price if time >= product_price.created_at
    end
    price.amount
  end
  
  
end
