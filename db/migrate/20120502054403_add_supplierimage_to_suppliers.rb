class AddSupplierimageToSuppliers < ActiveRecord::Migration
  def self.up
    add_column :suppliers, :supplierimage, :string
  end

  def self.down
    remove_column :suppliers, :supplierimage
  end
end
