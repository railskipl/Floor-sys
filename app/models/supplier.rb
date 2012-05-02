class Supplier < ActiveRecord::Base
  attr_accessible :account_reference,:company_name,:account_number,:vat_number,:address_line1,:address_line2,:address_line3,:town,:country,:postcode,:website,:glcode,:communication_date,:type_id,:contact,:outcome,:note_date,:note,:added_by,:company_id,:supplierimage
  mount_uploader :supplierimage, SupplierimageUploader
  
end
