class AddUserimageToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :userimage, :string
  end

  def self.down
    remove_column :users, :userimage
  end
end
