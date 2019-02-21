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

ActiveRecord::Schema.define(version: 2019_02_21_203409) do

  create_table "prices", force: :cascade do |t|
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Vendor_id"
    t.integer "Product_id"
    t.index ["Product_id"], name: "index_prices_on_Product_id"
    t.index ["Vendor_id"], name: "index_prices_on_Vendor_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vendor_id"
    t.integer "Price_id"
    t.index ["Price_id"], name: "index_products_on_Price_id"
    t.index ["vendor_id"], name: "index_products_on_vendor_id"
  end

  create_table "vendors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "Product_id"
    t.integer "Price_id"
    t.index ["Price_id"], name: "index_vendors_on_Price_id"
    t.index ["Product_id"], name: "index_vendors_on_Product_id"
  end

end
