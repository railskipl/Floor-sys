class CreateUoms < ActiveRecord::Migration
  def self.up
    create_table :uoms do |t|
      t.string :roll
      t.string :roll_min
      t.integer :std_length
      t.integer :std_width
      t.integer :item_width
      t.integer :item_length
      t.string :buy_in_multiples
      t.string :sale_in_multiples
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :uoms
  end
end
