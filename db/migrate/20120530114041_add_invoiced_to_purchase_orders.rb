class AddInvoicedToPurchaseOrders < ActiveRecord::Migration
  def self.up
    add_column :purchase_orders, :invoiced, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :purchase_orders, :invoiced
  end
end
