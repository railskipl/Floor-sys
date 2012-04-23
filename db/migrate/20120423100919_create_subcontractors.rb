class CreateSubcontractors < ActiveRecord::Migration
  def self.up
    create_table :subcontractors do |t|
      t.integer :contact_id
      t.string :rate
      t.datetime :communication_date
      t.integer :type_id
      t.string :contact
      t.text :outcome
      t.date :note_date
      t.text :note
      t.string :addded_by
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subcontractors
  end
end
