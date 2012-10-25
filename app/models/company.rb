class Company < ActiveRecord::Base
  attr_accessible :companylogo, :company_name, :company_address1, :company_address2, :company_town, :country, :post_code, :phone_number, :fax_number, :web_url, :email, :vat_no, :vat_rate, :reg_no, :user_id, :country_name
  mount_uploader :companylogo, CompanylogoUploader    
                           
end
