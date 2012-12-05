class Group < ActiveRecord::Base
  has_many :contact_groups
  has_many :contacts, :through => :contact_groups
  
    accepts_nested_attributes_for :contact_groups, :reject_if => :all_blank, :allow_destroy => true
end
