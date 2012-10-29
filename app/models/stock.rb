class Stock < ActiveRecord::Base
  
  attr_accessible :product_id, :uom_id, :company_id, :units, :sold_units
  
  
  
end
