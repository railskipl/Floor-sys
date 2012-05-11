class CreatePurchaseOrderItems < ActiveRecord::Migration
  def self.up
    create_table :purchase_order_items do |t|
      t.integer :purchase_order_id
      t.integer :product_id
      t.decimal :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :purchase_order_items
  end
end
