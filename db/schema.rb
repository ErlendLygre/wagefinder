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

ActiveRecord::Schema.define(version: 20171218110927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "json"
    t.integer "avg_wage"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "access_token"
    t.text "raw_data"
    t.index ["email"], name: "index_registrations_on_email", unique: true
    t.index ["reset_password_token"], name: "index_registrations_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.bigint "registration_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["registration_id"], name: "index_users_on_registration_id"
  end

  create_table "wages", force: :cascade do |t|
    t.integer "wage"
    t.bigint "user_id"
    t.bigint "field_id"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "years_worked"
    t.integer "years_edu"
    t.string "city"
    t.index ["company_id"], name: "index_wages_on_company_id"
    t.index ["field_id"], name: "index_wages_on_field_id"
    t.index ["user_id"], name: "index_wages_on_user_id"
  end

  add_foreign_key "users", "registrations"
  add_foreign_key "wages", "companies"
  add_foreign_key "wages", "fields"
  add_foreign_key "wages", "users"
end
