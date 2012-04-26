class CreateProductPrices < ActiveRecord::Migration
  def self.up
    create_table :product_prices do |t|
      t.string :roll_cost
      t.string :cut_cost
      t.string :special_roll_cost
      t.string :item_cost
      t.string :item_special
      t.text :special_price_description
      t.string :roll_net
      t.string :discount_roll_net
      t.string :cut_net
      t.string :discount_cu_net
      t.date :start_date
      t.date :expiry_date
      t.string :srp
      t.integer :supplier_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_prices
  end
end
