class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :company_name
      t.string :company_address1
      t.string :company_address2
      t.string :company_town
      t.integer :country
      t.string :post_code
      t.string :phone_number
      t.string :fax_number
      t.string :web_url
      t.string :email
      t.string :vat_no
      t.string :vat_rate
      t.string :reg_no
      t.string :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
