class CreateQuotations < ActiveRecord::Migration
  def self.up
    create_table :quotations do |t|
      t.integer :product_id
      t.integer :uom_id
      t.integer :supplier_id
      t.integer :company_id
      t.string :quotation_number
      t.date :date_generated

      t.timestamps
    end
  end

  def self.down
    drop_table :quotations
  end
end
