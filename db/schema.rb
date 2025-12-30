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

ActiveRecord::Schema[8.1].define(version: 2025_12_30_155508) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "Address"
    t.string "FirstName"
    t.string "LastName"
    t.datetime "created_at", null: false
    t.string "phone"
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "quantity"
    t.decimal "unit_price"
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "ordered_at"
    t.decimal "total"
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.text "Description"
    t.string "Name"
    t.datetime "created_at", null: false
    t.float "price"
    t.integer "quantity"
    t.datetime "updated_at", null: false
  end

  create_table "shipping_details", force: :cascade do |t|
    t.string "address"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "shipped_at"
    t.string "state"
    t.datetime "updated_at", null: false
  end
end
