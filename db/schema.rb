# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_05_072955) do

  create_table "gasolines", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.integer "prefectures_id", null: false
    t.string "municipality", null: false
    t.string "gas_station", null: false
    t.integer "price", null: false
    t.integer "liter", null: false
    t.integer "main_gaso_tax", null: false
    t.integer "provisional_gaso_tax", null: false
    t.integer "local_main_gaso_tax", null: false
    t.integer "local_provisional_gaso_tax", null: false
    t.integer "consumption_tax", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
