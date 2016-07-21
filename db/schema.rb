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

ActiveRecord::Schema.define(version: 20160721020631) do

  create_table "appearers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.string   "last_name"
    t.string   "name"
    t.string   "civil_status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["request_property_id"], name: "index_appearers_on_request_property_id"
    t.index ["user_id"], name: "index_appearers_on_user_id"
  end

  create_table "petitioners", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.string   "last_name"
    t.string   "name"
    t.string   "document"
    t.string   "civil_status"
    t.string   "address"
    t.integer  "phone"
    t.string   "email"
    t.string   "infodigital"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["request_property_id"], name: "index_petitioners_on_request_property_id"
    t.index ["user_id"], name: "index_petitioners_on_user_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.string   "register"
    t.string   "repertory"
    t.date     "date_register"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["request_property_id"], name: "index_properties_on_request_property_id"
    t.index ["user_id"], name: "index_properties_on_user_id"
  end

  create_table "property_certificate_sequences", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_property_certificate_sequences_on_user_id"
  end

  create_table "request_properties", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "certificate"
    t.string   "request_certificate"
    t.string   "comment"
    t.string   "sequence_request"
    t.string   "sequence_certificate"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_request_properties_on_user_id"
  end

  create_table "request_sequence_properties", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_request_sequence_properties_on_user_id"
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
