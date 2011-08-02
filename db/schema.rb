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

ActiveRecord::Schema.define(:version => 20110801143116) do

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.boolean  "enabled"
    t.boolean  "monsanto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "submission_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.string   "tsm_name"
    t.string   "tsm_email"
    t.string   "abm_contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", :force => true do |t|
    t.integer  "entry_number"
    t.string   "traits"
    t.string   "rm"
    t.string   "seed_treatment"
    t.string   "harv_pop"
    t.string   "plot_wt"
    t.string   "harv_moist"
    t.string   "row_length"
    t.string   "row_width"
    t.string   "rows_harv"
    t.string   "test_wt"
    t.string   "yield"
    t.integer  "yield_rank"
    t.boolean  "exclude"
    t.integer  "product_id"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "use_strict"
  end

  create_table "entry_data_fields", :force => true do |t|
    t.string   "key"
    t.integer  "column"
    t.boolean  "direct_transfer"
    t.integer  "plot_report_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "submission_id"
    t.string   "type"
    t.string   "name"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plot_report_data_fields", :force => true do |t|
    t.integer  "plot_report_type_id"
    t.string   "key"
    t.integer  "row"
    t.integer  "column"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plot_report_types", :force => true do |t|
    t.string   "name"
    t.integer  "entry_row_start"
    t.integer  "reaper_managed_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "bayer_code"
    t.string   "traits"
    t.string   "maturity_rating"
    t.text     "description"
    t.string   "imported_product_id"
    t.text     "imported_comments"
    t.boolean  "enabled"
    t.string   "imported_country_code"
    t.integer  "reaper_managed_brand_id"
    t.integer  "competitor_brand_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reaper_managed_brands", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seed_treatments", :force => true do |t|
    t.string   "abbreviation"
    t.string   "name_on_plot_form"
    t.string   "official_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", :force => true do |t|
    t.string   "cooperator"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "plot_state"
    t.string   "plot_county"
    t.string   "sales_manager"
    t.string   "plot_crop"
    t.string   "plot_status"
    t.string   "plot_type"
    t.string   "dealer"
    t.text     "directions"
    t.text     "comments"
    t.decimal  "lat",                            :precision => 15, :scale => 10
    t.decimal  "lng",                            :precision => 15, :scale => 10
    t.string   "planted_from"
    t.string   "starting_corner"
    t.date     "planting_date"
    t.string   "planting_rate"
    t.string   "previous_crop"
    t.string   "tillage_system"
    t.string   "irrigation"
    t.date     "harvest_date"
    t.string   "soil_type"
    t.string   "soil_ph"
    t.string   "soil_om"
    t.integer  "reaper_managed_brand_id"
    t.integer  "plot_report_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "submission_state"
    t.string   "monsanto_plot_id"
    t.string   "plot_city"
    t.integer  "entered_by_id"
    t.string   "submitted_by"
    t.string   "mail_proof_file_name"
    t.string   "mail_proof_content_type"
    t.integer  "mail_proof_file_size"
    t.datetime "mail_proof_updated_at"
    t.string   "email"
    t.string   "plot_report_file_name"
    t.string   "plot_report_content_type"
    t.integer  "plot_report_file_size"
    t.boolean  "sms_published"
    t.boolean  "dm_published"
    t.boolean  "email_published"
    t.string   "excel_plot_report_file_name"
    t.string   "excel_plot_report_content_type"
    t.integer  "excel_plot_report_file_size"
  end

  create_table "sur_counties", :force => true do |t|
    t.string   "submission_id"
    t.string   "county"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traits", :force => true do |t|
    t.string   "name"
    t.string   "trait"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.text     "preferred_brands"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
