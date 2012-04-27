class Product < ActiveRecord::Base
  
  has_many :product_prices, :dependent => :destroy
        accepts_nested_attributes_for :product_prices, :reject_if => lambda { |a| a[:roll_cost].blank? }, :allow_destroy => true
  
  has_many :uoms, :dependent => :destroy
        accepts_nested_attributes_for :uoms, :reject_if => lambda { |a| a[:roll].blank? }, :allow_destroy => true
        
  # join relationship for categories and products model
  has_and_belongs_to_many :categories
  
end
