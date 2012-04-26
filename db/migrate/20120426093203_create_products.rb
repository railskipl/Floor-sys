class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id
      t.string :product_code
      t.integer :product_type_id
      t.integer :product_group_id
      t.integer :supplier_id
      t.string :range_name
      t.integer :product_fibre_id
      t.integer :product_banking_id
      t.string :pile_height_gauge
      t.string :pile_weight
      t.string :unit_weight
      t.integer :product_wear_id
      t.integer :product_style_type_id
      t.boolean :is_published
      t.text :full_description
      t.text :notes
      t.string :attachement
      t.string :colour_name
      t.string :colour_number
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
