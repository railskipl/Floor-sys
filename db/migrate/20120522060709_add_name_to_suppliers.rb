class AddNameToSuppliers < ActiveRecord::Migration
  def self.up
    add_column :suppliers, :name, :string
  end

  def self.down
    remove_column :suppliers, :name
  end
end
