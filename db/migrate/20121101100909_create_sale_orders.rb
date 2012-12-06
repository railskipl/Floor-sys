class CreateSaleOrders < ActiveRecord::Migration
  def self.up
    create_table :sale_orders do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sale_orders
  end
end
