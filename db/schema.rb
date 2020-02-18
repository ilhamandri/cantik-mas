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

ActiveRecord::Schema.define(version: 2020_02_18_091526) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notifications", force: :cascade do |t|
    t.datetime "date_created", null: false
    t.integer "read", default: 0, null: false
    t.string "link", null: false
    t.string "message", null: false
    t.integer "m_type", default: 1, null: false
    t.bigint "from_user_id", null: false
    t.bigint "to_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["from_user_id"], name: "index_notifications_on_from_user_id"
    t.index ["to_user_id"], name: "index_notifications_on_to_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", default: "DEFAULT STORE NAME", null: false
    t.string "address", default: "DEFAULT STORE ADDRESS", null: false
    t.string "phone", default: "1234567", null: false
    t.integer "store_type", default: 1, null: false
    t.bigint "cash", default: 100000000, null: false
    t.bigint "equity", default: 100000000, null: false
    t.bigint "debt", default: 0, null: false
    t.bigint "receivable", default: 0, null: false
    t.bigint "bank", default: 0, null: false
    t.bigint "grand_total_before", default: 0, null: false
    t.bigint "modals_before", default: 0, null: false
    t.bigint "grand_total_card_before", default: 0, null: false
    t.bigint "store_balances", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.integer "level", default: 0, null: false
    t.string "email", null: false
    t.string "encrypted_password", limit: 128, null: false
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128, null: false
    t.string "phone", default: "62123456789", null: false
    t.string "address", default: "DEFAULT ADDRESS", null: false
    t.integer "sex", default: 0, null: false
    t.bigint "id_card", default: 123456789123456, null: false
    t.bigint "salary", default: 0, null: false
    t.string "image"
    t.integer "fingerprint"
    t.bigint "store_id", default: 1, null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
    t.index ["store_id"], name: "index_users_on_store_id"
  end

  add_foreign_key "notifications", "users", column: "from_user_id"
  add_foreign_key "notifications", "users", column: "to_user_id"
end
