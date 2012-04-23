class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.integer :contact_id
      t.string :nominal_gl_code
      t.string :vat_rate_sales
      t.string :vat_rate_purchases
      t.string :contact_group
      t.string :company_no
      t.string :business_type
      t.string :bank_name
      t.string :account_name
      t.string :sort_code
      t.string :account_number
      t.string :credit_limit
      t.string :terms
      t.string :on_hold
      t.string :account_balance
      t.datetime :note_date
      t.string :note_type
      t.string :note_description
      t.date :attachement_date
      t.string :attachement_type
      t.string :attachement_details
      t.string :status
      t.datetime :communication_date
      t.string :contact_type
      t.string :contact
      t.text :outcome
      t.date :note_date
      t.text :note
      t.integer :added_by
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
