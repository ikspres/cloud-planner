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

ActiveRecord::Schema.define(version: 20170202235111) do

  create_table "instance_types", force: :cascade do |t|
    t.integer  "provider_id"
    t.integer  "region_id"
    t.integer  "machine_type_id"
    t.integer  "os_type"
    t.float    "price"
    t.float    "price_1y"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "pre_installed_sw"
    t.integer  "contract_type"
    t.integer  "unit"
    t.integer  "tenancy"
    t.string   "sku"
    t.integer  "offering_class"
    t.integer  "prepay_type"
  end

  create_table "machine_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "core_count"
    t.float    "memory_size"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "disk_size"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.integer  "provider_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
