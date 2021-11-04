# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_04_035251) do

  create_table "cash_registers", force: :cascade do |t|
    t.datetime "date"
    t.float "total_cash"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.float "sale_price"
    t.integer "stock"
    t.integer "stock_min"
    t.string "description"
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "sales", force: :cascade do |t|
    t.datetime "date"
    t.float "iva"
    t.float "gross_total"
    t.integer "discount"
    t.float "total"
    t.boolean "registered", default: true
    t.boolean "paid"
    t.integer "cash_register_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cash_register_id"], name: "index_sales_on_cash_register_id"
  end

  create_table "sales_details", force: :cascade do |t|
    t.integer "sale_id", null: false
    t.integer "product_id", null: false
    t.float "sale_price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_sales_details_on_product_id"
    t.index ["sale_id"], name: "index_sales_details_on_sale_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "products", "categories"
  add_foreign_key "sales", "cash_registers"
  add_foreign_key "sales_details", "products"
  add_foreign_key "sales_details", "sales"
end
