class CreateAddToGroups < ActiveRecord::Migration
  def self.up
    create_table :add_to_groups do |t|
      t.integer :group_id
      t.integer :contact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :add_to_groups
  end
end
