class CreateProductFibres < ActiveRecord::Migration
  def self.up
    create_table :product_fibres do |t|
      t.string :name_1
      t.string :name_2
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :product_fibres
  end
end
