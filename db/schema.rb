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

ActiveRecord::Schema.define(:version => 20120423072555) do

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.string   "category_type"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
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
  end

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "outgoing_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "sales_types", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "company_id"
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
