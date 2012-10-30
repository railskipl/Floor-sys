class CreateDefectiveProducts < ActiveRecord::Migration
  def self.up
    create_table :defective_products do |t|
        t.integer  :product_id
        t.integer  :uom_id
        t.integer  :units
        t.text     :notes
        t.integer  :company_id
        t.timestamps
    end
  end

  def self.down
    drop_table :defective_products
  end
end
