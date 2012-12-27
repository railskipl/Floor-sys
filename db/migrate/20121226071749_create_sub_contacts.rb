class CreateSubContacts < ActiveRecord::Migration
  def self.up
    create_table :sub_contacts do |t|
      t.string :name
      t.string :position
      t.string :address1
      t.string :address2
      t.string :town
      t.string :country
      t.string :post_code
      t.string :vat_number
      t.string :phone_no
      t.string :fax
      t.string :email
      t.string :nominal_code
      t.string :vat_sales
      t.string :vat_purchase
      t.string :skype
      t.string :msn

      t.timestamps
    end
  end

  def self.down
    drop_table :sub_contacts
  end
end
