class CreateStocks < ActiveRecord::Migration
  def self.up
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :uom_id
      t.integer :units
      t.integer :sold_units
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :stocks
  end
end
