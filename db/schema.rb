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

ActiveRecord::Schema.define(version: 20150121012345) do

  create_table "applications", force: :cascade do |t|
    t.integer  "ams_id"
    t.string   "short_name"
    t.string   "category"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "application_id"
    t.integer  "business_area_id"
    t.string   "name"
    t.string   "manager"
  end

  add_index "applications", ["application_id"], name: "index_applications_on_application_id"

  create_table "business_areas", force: :cascade do |t|
    t.string   "name"
    t.string   "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "impacted_applications", force: :cascade do |t|
    t.integer  "project_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "application_id"
  end

  create_table "initiatives", force: :cascade do |t|
    t.string   "name"
    t.integer  "priority"
    t.integer  "business_area_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "ipr_num"
    t.string   "ref_num"
    t.string   "project_name"
    t.datetime "submit_date"
    t.datetime "last_update_date"
    t.integer  "step_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "initiative_id"
    t.string   "status"
  end

end
