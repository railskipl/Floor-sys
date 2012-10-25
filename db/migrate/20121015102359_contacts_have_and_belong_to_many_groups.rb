class ContactsHaveAndBelongToManyGroups < ActiveRecord::Migration
  def self.up
    create_table :contacts_groups, :id => false do |t|
      t.references  :group, :contact
    end
  end
 
  def self.down
    drop_table :contacts_groups
  end
end