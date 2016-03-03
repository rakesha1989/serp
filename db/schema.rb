# encoding: UTF-8
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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160303092559) do

  create_table "accounts", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "invoice_id"
    t.integer  "bill_id"
    t.integer  "recieve_payment_id"
    t.integer  "expense_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "addstocks", force: :cascade do |t|
    t.decimal  "stock"
    t.string   "unit"
    t.integer  "material_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "attendances", force: :cascade do |t|
    t.integer  "employee_id"
    t.date     "day"
    t.boolean  "full_day",    default: false
    t.boolean  "half_day",    default: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone_number"
    t.text     "info"
    t.string   "p_a_n_number"
    t.string   "t_i_n_number"
    t.string   "c_s_t_reg"
    t.string   "key_contact_person"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "p_a_n_number"
    t.string   "t_i_n_no"
    t.float    "vat_sales"
    t.float    "vat_purchase"
    t.string   "adress"
    t.string   "owner"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "designation"
    t.string   "email"
    t.string   "mobile"
    t.integer  "client_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "despatches", force: :cascade do |t|
    t.date     "day"
    t.integer  "product_id"
    t.decimal  "quantity"
    t.string   "unit"
    t.integer  "client_id"
    t.integer  "d_c_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "employee_id"
    t.string   "gender"
    t.date     "joining_date"
    t.date     "date_of_birth"
    t.decimal  "salary"
    t.text     "address"
    t.string   "mobile"
    t.string   "email"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.integer  "supplier_id"
    t.string   "payee_name"
    t.string   "payment_method"
    t.date     "payment_date"
    t.string   "email"
    t.integer  "reference_no"
    t.text     "description"
    t.string   "amount"
    t.float    "tax"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "invoice_number"
    t.date     "day"
    t.text     "terms"
    t.date     "due_date"
    t.integer  "product_id"
    t.string   "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.decimal  "rate"
    t.decimal  "amount"
    t.float    "tax"
    t.text     "message"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "material_products", force: :cascade do |t|
    t.integer  "material_id"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string   "name"
    t.decimal  "stock"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_bills", force: :cascade do |t|
    t.integer  "supplier_id"
    t.string   "payment_method"
    t.date     "payment_date"
    t.string   "bill_no"
    t.integer  "reference_no"
    t.text     "description"
    t.string   "amount"
    t.float    "tax"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "productions", force: :cascade do |t|
    t.decimal  "quntity"
    t.string   "unit"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "dwg_no"
    t.integer  "available_stock"
    t.integer  "client_id"
    t.integer  "unit_cost"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "purchase_orders", force: :cascade do |t|
    t.integer  "supplier_id"
    t.date     "p_o_date"
    t.text     "shipping_address"
    t.string   "ship_to"
    t.integer  "product_id"
    t.text     "description"
    t.decimal  "quantity"
    t.string   "unit"
    t.string   "rate"
    t.decimal  "amount"
    t.float    "tax"
    t.text     "message"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "recieve_payments", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "invoice_id"
    t.string   "email"
    t.date     "payment_date"
    t.string   "payment_method"
    t.integer  "reference_no"
    t.string   "amount_recieved"
    t.string   "deposited_to"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "phone_number"
    t.text     "info"
    t.string   "p_a_n_no"
    t.string   "t_i_n_no"
    t.string   "c_s_t_reg"
    t.string   "key_contact_person"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
