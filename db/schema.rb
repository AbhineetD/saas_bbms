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

ActiveRecord::Schema.define(version: 20170208174644) do

  create_table "blood_bags", force: :cascade do |t|
    t.integer  "bag_number"
    t.integer  "segment_number"
    t.string   "blood_type"
    t.string   "blood_group"
    t.string   "rh_type"
    t.date     "date_collection"
    t.date     "date_expiry"
    t.string   "anticoagulant"
    t.decimal  "volume"
    t.decimal  "storage_temperature"
    t.string   "HIV"
    t.string   "HBsAG"
    t.string   "HCV"
    t.string   "VDRL"
    t.string   "MP"
    t.datetime "date_time_issue"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "contact_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "sex"
    t.date     "dob"
    t.string   "fathers_name"
    t.string   "occupation"
    t.string   "organisation"
    t.text     "address"
    t.string   "email"
    t.string   "phone"
    t.integer  "weight"
    t.string   "bp"
    t.integer  "pulse"
    t.decimal  "temperature"
    t.decimal  "hb"
    t.string   "accept"
    t.string   "patient_relation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
