class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :account_reference
      t.string :company_name
      t.string :account_number
      t.string :vat_number
      t.text :address_line1
      t.text :address_line2
      t.text :address_line3
      t.string :town
      t.string :country
      t.string :postcode
      t.string :website
      t.string :glcode
      t.datetime :communication_date
      t.integer :type_id
      t.string :contact
      t.text :outcome
      t.date :note_date
      t.text :note
      t.string :added_by
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :suppliers
  end
end
