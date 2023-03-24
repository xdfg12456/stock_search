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

ActiveRecord::Schema[7.0].define(version: 2022_11_18_204821) do
  create_table "daily_quotes", force: :cascade do |t|
    t.string "code", null: false
    t.date "transaction_date", null: false
    t.bigint "trade_volume"
    t.bigint "number_of_transactions"
    t.bigint "trade_price"
    t.float "opening_price"
    t.float "highest_price"
    t.float "lowest_price"
    t.float "closing_price"
    t.string "ups_and_downs"
    t.float "price_difference"
    t.float "last_best_bid_price"
    t.bigint "last_best_bid_volume"
    t.float "last_best_ask_price"
    t.bigint "last_best_ask_volume"
    t.float "price_earning_ratio"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code", "transaction_date"], name: "index_daily_quotes_on_code_and_transaction_date", unique: true
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name", null: false
    t.string "code", null: false
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_stocks_on_code", unique: true
  end

  create_table "three_legal_people", force: :cascade do |t|
    t.string "code", null: false
    t.date "transaction_date", null: false
    t.bigint "overseas_shares"
    t.bigint "credit_excess_shares"
    t.bigint "proprietary_excess_shares"
    t.bigint "sum_of_excess_shares"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "account", null: false
    t.string "password"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account"], name: "index_users_on_account", unique: true
  end

end
