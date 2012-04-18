class CreateVats < ActiveRecord::Migration
  def self.up
    create_table :vats do |t|
      t.string :tax_rate
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end

  def self.down
    drop_table :vats
  end
end
