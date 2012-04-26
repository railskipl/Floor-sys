class CreateProductGroups < ActiveRecord::Migration
  def self.up
    create_table :product_groups do |t|
      t.string :name
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_groups
  end
end
