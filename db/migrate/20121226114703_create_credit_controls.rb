class CreateCreditControls < ActiveRecord::Migration
  def self.up
    create_table :credit_controls do |t|
      t.string :credit_limit
      t.integer :contact_id

      t.timestamps
    end
  end

  def self.down
    drop_table :credit_controls
  end
end
