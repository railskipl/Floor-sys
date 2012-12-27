# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121227050219) do

  create_table "add_to_groups", :force => true do |t|
    t.integer  "group_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.string   "category_type"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  create_table "categories_products", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.string   "company_address1"
    t.string   "company_address2"
    t.string   "company_town"
    t.integer  "country"
    t.string   "post_code"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "web_url"
    t.string   "email"
    t.string   "vat_no"
    t.string   "vat_rate"
    t.string   "reg_no"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.string   "country_name"
    t.string   "companylogo"
  end

  create_table "contact_groups", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", :force => true do |t|
    t.string   "contact_name"
    t.string   "contact_position"
    t.text     "contact_address1"
    t.text     "contact_address2"
    t.string   "contact_town"
    t.string   "contact_country"
    t.string   "contact_postcode"
    t.string   "contact_vat_number"
    t.string   "contact_telephone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.string   "nominal_code"
    t.string   "vat_rate_sales"
    t.string   "vat_rate_purchases"
    t.string   "skype"
    t.string   "msn"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.boolean  "status"
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_controls", :force => true do |t|
    t.string   "credit_limit"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "account_hold"
  end

  create_table "customers", :force => true do |t|
    t.integer  "contact_id"
    t.string   "nominal_gl_code"
    t.string   "vat_rate_sales"
    t.string   "vat_rate_purchases"
    t.string   "contact_group"
    t.string   "company_no"
    t.string   "business_type"
    t.string   "bank_name"
    t.string   "account_name"
    t.string   "sort_code"
    t.string   "account_number"
    t.string   "credit_limit"
    t.string   "terms"
    t.string   "on_hold"
    t.string   "account_balance"
    t.datetime "note_date"
    t.string   "note_type"
    t.string   "note_description"
    t.date     "attachement_date"
    t.string   "attachement_type"
    t.string   "attachement_details"
    t.string   "status"
    t.datetime "communication_date"
    t.string   "contact_type"
    t.string   "contact"
    t.text     "outcome"
    t.text     "note"
    t.integer  "added_by"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "attachement_detail"
    t.string   "added_by_customer"
  end

  create_table "defective_products", :force => true do |t|
    t.integer  "product_id"
    t.integer  "uom_id"
    t.integer  "units"
    t.text     "notes"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.text     "note"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outgoing_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_backings", :force => true do |t|
    t.string   "name_1"
    t.string   "name_2"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_fibres", :force => true do |t|
    t.string   "name_1"
    t.string   "name_2"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_groups", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_prices", :force => true do |t|
    t.string   "roll_cost"
    t.string   "cut_cost"
    t.string   "special_roll_cost"
    t.string   "item_cost"
    t.string   "item_special"
    t.text     "special_price_description"
    t.string   "roll_net"
    t.string   "discount_roll_net"
    t.string   "cut_net"
    t.string   "discount_cu_net"
    t.date     "start_date"
    t.date     "expiry_date"
    t.string   "srp"
    t.integer  "supplier_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_req_plannings", :force => true do |t|
    t.text     "notes"
    t.integer  "product_id"
    t.integer  "uom_id"
    t.integer  "company_id"
    t.date     "date_required_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_style_types", :force => true do |t|
    t.string   "name_1"
    t.string   "name_2"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_types", :force => true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_wears", :force => true do |t|
    t.string   "name_1"
    t.string   "name_2"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "product_code"
    t.integer  "product_type_id"
    t.integer  "product_group_id"
    t.integer  "supplier_id"
    t.string   "range_name"
    t.integer  "product_fibre_id"
    t.integer  "product_banking_id"
    t.string   "pile_height_gauge"
    t.string   "pile_weight"
    t.string   "unit_weight"
    t.integer  "product_wear_id"
    t.integer  "product_style_type_id"
    t.boolean  "is_published"
    t.text     "full_description"
    t.text     "notes"
    t.string   "attachement"
    t.string   "colour_name"
    t.string   "colour_number"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "product_name"
    t.decimal  "purchase_price",        :precision => 10, :scale => 0
  end

  create_table "prospects", :force => true do |t|
    t.string   "telephone"
    t.string   "online"
    t.text     "walk_in"
    t.string   "product_interest"
    t.string   "quotation_number_sent"
    t.string   "date_of_purchase_to_make"
    t.text     "notes"
    t.integer  "sales_person"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_of_purchase"
    t.integer  "customer_id"
  end

  create_table "purchase_order_items", :force => true do |t|
    t.integer  "purchase_order_id"
    t.integer  "product_id"
    t.decimal  "quantity",          :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_orders", :force => true do |t|
    t.integer  "supplier_id"
    t.string   "deliver_to"
    t.string   "deliver_phone"
    t.date     "order_date"
    t.date     "expected_date"
    t.text     "purchase_order_notes"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "invoiced",             :default => false, :null => false
  end

  create_table "quotations", :force => true do |t|
    t.integer  "product_id"
    t.integer  "uom_id"
    t.integer  "supplier_id"
    t.integer  "company_id"
    t.string   "quotation_number"
    t.date     "date_generated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "sale_estimates", :force => true do |t|
    t.integer  "contact_id"
    t.string   "deliver_to"
    t.string   "deliver_phone"
    t.string   "estimate_no"
    t.date     "date"
    t.date     "expiry_date"
    t.date     "measure_date"
    t.string   "sales_person"
    t.string   "customer_ref_no"
    t.integer  "product_id"
    t.text     "estimate_note"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sale_representatives", :force => true do |t|
    t.integer  "contact_id"
    t.datetime "communication_date"
    t.integer  "type_id"
    t.string   "contact"
    t.text     "outcome"
    t.date     "note_date"
    t.text     "note"
    t.string   "added_by"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stocks", :force => true do |t|
    t.integer  "product_id"
    t.integer  "uom_id"
    t.integer  "units"
    t.integer  "sold_units"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_contacts", :force => true do |t|
    t.string   "name"
    t.string   "position"
    t.string   "address1"
    t.string   "address2"
    t.string   "town"
    t.string   "country"
    t.string   "post_code"
    t.string   "vat_number"
    t.string   "phone_no"
    t.string   "fax"
    t.string   "email"
    t.string   "nominal_code"
    t.string   "vat_sales"
    t.string   "vat_purchase"
    t.string   "skype"
    t.string   "msn"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_id"
  end

  create_table "subcontractors", :force => true do |t|
    t.integer  "contact_id"
    t.string   "rate"
    t.datetime "communication_date"
    t.integer  "type_id"
    t.string   "contact"
    t.text     "outcome"
    t.date     "note_date"
    t.text     "note"
    t.string   "addded_by"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "account_reference"
    t.string   "company_name"
    t.string   "account_number"
    t.string   "vat_number"
    t.text     "address_line1"
    t.text     "address_line2"
    t.text     "address_line3"
    t.string   "town"
    t.string   "country"
    t.string   "postcode"
    t.string   "website"
    t.string   "glcode"
    t.datetime "communication_date"
    t.integer  "type_id"
    t.string   "contact"
    t.text     "outcome"
    t.date     "note_date"
    t.text     "note"
    t.string   "added_by"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "supplierimage"
    t.string   "name"
  end

  create_table "uoms", :force => true do |t|
    t.string   "roll"
    t.string   "roll_min"
    t.integer  "std_length"
    t.integer  "std_width"
    t.integer  "item_width"
    t.integer  "item_length"
    t.string   "buy_in_multiples"
    t.string   "sale_in_multiples"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "surname"
    t.string   "job_title"
    t.text     "address_line1"
    t.text     "address_line2"
    t.text     "address_line3"
    t.string   "city"
    t.string   "county"
    t.integer  "postcode"
    t.string   "fix_line"
    t.integer  "mobile_number"
    t.integer  "company_id"
    t.string   "username"
    t.integer  "admin_id"
    t.string   "userimage"
    t.string   "postcodeuk"
    t.string   "land_line"
    t.string   "mobile_numbers"
    t.string   "country"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "vats", :force => true do |t|
    t.string   "tax_rate"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
