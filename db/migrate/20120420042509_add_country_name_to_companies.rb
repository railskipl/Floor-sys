class AddCountryNameToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :country_name, :string
  end

  def self.down
    remove_column :companies, :country_name
  end
end
