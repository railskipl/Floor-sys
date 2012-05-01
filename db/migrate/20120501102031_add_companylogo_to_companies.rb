class AddCompanylogoToCompanies < ActiveRecord::Migration
  def self.up
    add_column :companies, :companylogo, :string
  end

  def self.down
    remove_column :companies, :companylogo
  end
end
