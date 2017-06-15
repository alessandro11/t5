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

ActiveRecord::Schema.define(version: 20170615065705) do

  create_table "houses", force: :cascade do |t|
    t.string   "tenant"
    t.integer  "room"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses_people", id: false, force: :cascade do |t|
    t.integer "house_id"
    t.integer "person_id"
  end

  add_index "houses_people", ["house_id"], name: "index_houses_people_on_house_id"
  add_index "houses_people", ["person_id"], name: "index_houses_people_on_person_id"

  create_table "people", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "address"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string   "name"
    t.string   "place"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "professions", ["person_id"], name: "index_professions_on_person_id"

  create_table "shoes", force: :cascade do |t|
    t.string   "brand"
    t.integer  "size"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shoes", ["person_id"], name: "index_shoes_on_person_id"

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.string   "password_digest"
    t.boolean  "permission"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
