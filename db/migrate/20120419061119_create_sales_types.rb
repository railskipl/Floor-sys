class CreateSalesTypes < ActiveRecord::Migration
  def self.up
    create_table :sales_types do |t|
      t.string :code
      t.string :name
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sales_types
  end
end
