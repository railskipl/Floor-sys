class AddAdminIdToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :admin_id, :integer
  end

  def self.down
    remove_column :users, :admin_id
  end
end
