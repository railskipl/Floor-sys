class CreateProductReqPlannings < ActiveRecord::Migration
  def self.up
    create_table :product_req_plannings do |t|
      t.text :notes
      t.integer :product_id
      t.integer :uom_id
      t.integer :company_id
      t.date :date_required_on

      t.timestamps
    end
  end

  def self.down
    drop_table :product_req_plannings
  end
end
