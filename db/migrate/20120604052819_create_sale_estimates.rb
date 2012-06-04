class CreateSaleEstimates < ActiveRecord::Migration
  def self.up
    create_table :sale_estimates do |t|
      t.integer :contact_id
      t.string :deliver_to
      t.string :deliver_phone
      t.string :estimate_no
      t.date :date
      t.date :expiry_date
      t.date :measure_date
      t.string :sales_person
      t.string :customer_ref_no
      t.integer :product_id
      t.text :estimate_note
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sale_estimates
  end
end
