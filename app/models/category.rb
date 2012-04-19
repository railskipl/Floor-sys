class Category < ActiveRecord::Base
  
  # has_ancestry line make sures that entered sub category has parent category or not. this is the ancestry gem functionality
  has_ancestry
  
  has_many :sub_categories, :dependent => :destroy
    accepts_nested_attributes_for :sub_categories, :reject_if => lambda { |a| a[:sub_category_name].blank? }, :allow_destroy => true
    
end
