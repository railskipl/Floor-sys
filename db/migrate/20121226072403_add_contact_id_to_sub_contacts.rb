class AddContactIdToSubContacts < ActiveRecord::Migration
  def self.up
    add_column :sub_contacts, :contact_id, :integer
  end

  def self.down
    remove_column :sub_contacts, :contact_id
  end
end
