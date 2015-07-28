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

ActiveRecord::Schema.define(version: 20150728170455) do

  create_table "users", force: :cascade do |t|
    t.string   "first_name",        limit: 255
    t.string   "last_name",         limit: 255
    t.date     "date_of_birth"
    t.string   "place_of_birth",    limit: 255
    t.string   "nationality",       limit: 255
    t.string   "id_ref_type",       limit: 255
    t.string   "id_ref_numb",       limit: 255
    t.string   "id_ref_made_at",    limit: 255
    t.date     "id_ref_expired_at"
    t.string   "password_hash",     limit: 255
    t.string   "password_salt",     limit: 255
    t.string   "login_name",        limit: 255
    t.string   "email",             limit: 255
    t.string   "mobile",            limit: 255
    t.string   "telephone",         limit: 255
    t.string   "fax",               limit: 255
    t.string   "country",           limit: 255
    t.string   "town",              limit: 255
    t.string   "quarter",           limit: 255
    t.string   "street",            limit: 255
    t.text     "description",       limit: 65535
    t.string   "image_profile",     limit: 255
    t.boolean  "activated"
    t.boolean  "email_confirmed"
    t.string   "confirm_token",     limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
