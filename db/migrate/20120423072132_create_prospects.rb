class CreateProspects < ActiveRecord::Migration
  def self.up
    create_table :prospects do |t|
      t.string :telephone
      t.string :online
      t.text :walk_in
      t.string :product_interest
      t.string :quotation_number_sent
      t.string :date_of_purchase_to_make
      t.text :notes
      t.integer :sales_person
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :prospects
  end
end
