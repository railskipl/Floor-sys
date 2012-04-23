class AddCustomerIdToProspects < ActiveRecord::Migration
  def self.up
    add_column :prospects, :customer_id, :integer
  end

  def self.down
    remove_column :prospects, :customer_id
  end
end
