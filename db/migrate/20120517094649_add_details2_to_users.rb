class AddDetails2ToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :postcodeuk, :string
    add_column :users, :land_line, :string
    add_column :users, :mobile_numbers, :string
  end

  def self.down
    remove_column :users, :mobile_numbers
    remove_column :users, :land_line
    remove_column :users, :postcodeuk
  end
end
