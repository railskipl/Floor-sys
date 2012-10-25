class AddDetailToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :first_name, :string
    add_column :users, :surname, :string
    add_column :users, :job_title, :string
    add_column :users, :address_line1, :text
    add_column :users, :address_line2, :text
    add_column :users, :address_line3, :text
    add_column :users, :city, :string
    add_column :users, :county, :string
    add_column :users, :postcode, :integer
    add_column :users, :fix_line, :string
    add_column :users, :mobile_number, :integer
    add_column :users, :company_id, :integer
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :surname
    remove_column :users, :job_title
    remove_column :users, :address_line1
    remove_column :users, :address_line2
    remove_column :users, :address_line3
    remove_column :users, :city
    remove_column :users, :county
    remove_column :users, :postcode
    remove_column :users, :fix_line
    remove_column :users, :mobile_number
    remove_column :users, :company_id
    
  end
end
