class AddProductNameToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :product_name, :string
  end

  def self.down
    remove_column :products, :product_name
  end
end
