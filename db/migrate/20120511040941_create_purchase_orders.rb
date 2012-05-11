class CreatePurchaseOrders < ActiveRecord::Migration
  def self.up
    create_table :purchase_orders do |t|
      t.integer :supplier_id
      t.string :deliver_to
      t.string :deliver_phone
      t.date :order_date
      t.date :expected_date
      t.text :purchase_order_notes
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :purchase_orders
  end
end
