class AddFieldCustomerToCustomers < ActiveRecord::Migration
  def self.up
    add_column :customers, :attachement_detail, :text
    add_column :customers, :added_by_customer, :string
  end

  def self.down
     remove_column :customers, :added_by_customer
      remove_column :customers, :attachement_detail
  end
end
