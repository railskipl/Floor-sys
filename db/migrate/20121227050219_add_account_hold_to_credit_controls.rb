class AddAccountHoldToCreditControls < ActiveRecord::Migration
  def self.up
    add_column :credit_controls, :account_hold, :boolean
  end

  def self.down
    remove_column :credit_controls, :account_hold
  end
end
