class AddDateOfPurchaseToProspects < ActiveRecord::Migration
  def self.up
    add_column :prospects, :date_of_purchase, :date
  end

  def self.down
    remove_column :prospects, :date_of_purchase
  end
end
