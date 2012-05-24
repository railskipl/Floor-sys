class Supplier < ActiveRecord::Base
  
  has_many :products
  has_many :purchase_orders
  
  attr_accessible :name, :account_reference,:company_name,:account_number,:vat_number,:address_line1,:address_line2,:address_line3,:town,:country,:postcode,:website,:glcode,:communication_date,:type_id,:contact,:outcome,:note_date,:note,:added_by,:company_id,:supplierimage
  mount_uploader :supplierimage, SupplierimageUploader
  
  scope :ordered_by_name, :order => 'name'
  
end
