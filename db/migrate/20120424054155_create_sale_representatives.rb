class CreateSaleRepresentatives < ActiveRecord::Migration
  def self.up
    create_table :sale_representatives do |t|
      t.integer :contact_id
      t.datetime :communication_date
      t.integer :type_id
      t.string :contact
      t.text :outcome
      t.date :note_date
      t.text :note
      t.string :added_by
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :sale_representatives
  end
end
