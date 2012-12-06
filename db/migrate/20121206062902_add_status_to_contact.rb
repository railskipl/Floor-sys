class AddStatusToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :status, :boolean
  end

  def self.down
    remove_column :contacts, :status
  end
end
