class Contact < ActiveRecord::Base
  has_many  :contact_groups
  has_many  :groups, :through => :contact_groups
  has_many  :sub_contacts,:dependent => :destroy
  has_many  :notes,:dependent => :destroy
  has_many  :credit_controls,:dependent => :destroy
  
def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |contact|
      csv << contact.attributes.values_at(*column_names)
    end
  end
end





end
