class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :contact_name
      t.string :contact_position
      t.text :contact_address1
      t.text :contact_address2
      t.string :contact_town
      t.string :contact_country
      t.string :contact_postcode
      t.string :contact_vat_number
      t.string :contact_telephone
      t.string :contact_fax
      t.string :contact_email
      t.string :nominal_code
      t.string :vat_rate_sales
      t.string :vat_rate_purchases
      t.string :skype
      t.string :msn
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
