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

ActiveRecord::Schema.define(version: 20140719020604) do

  create_table "assignments", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stamps", force: true do |t|
    t.integer  "user_id"
    t.integer  "user_tutorial_id"
    t.integer  "tutorial_id"
    t.integer  "assignment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stamps", ["assignment_id"], name: "index_stamps_on_assignment_id"
  add_index "stamps", ["tutorial_id"], name: "index_stamps_on_tutorial_id"
  add_index "stamps", ["user_id"], name: "index_stamps_on_user_id"
  add_index "stamps", ["user_tutorial_id"], name: "index_stamps_on_user_tutorial_id"

  create_table "tutorials", force: true do |t|
    t.integer  "assignment_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tutorials", ["assignment_id"], name: "index_tutorials_on_assignment_id"

  create_table "user_assignments", force: true do |t|
    t.integer  "user_id"
    t.integer  "assignment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_assignments", ["assignment_id"], name: "index_user_assignments_on_assignment_id"
  add_index "user_assignments", ["user_id"], name: "index_user_assignments_on_user_id"

  create_table "user_tutorials", force: true do |t|
    t.integer  "user_id"
    t.integer  "assignment_id"
    t.integer  "tutorial_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_tutorials", ["assignment_id"], name: "index_user_tutorials_on_assignment_id"
  add_index "user_tutorials", ["tutorial_id"], name: "index_user_tutorials_on_tutorial_id"
  add_index "user_tutorials", ["user_id"], name: "index_user_tutorials_on_user_id"

  create_table "users", force: true do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "nickname",   null: false
    t.string   "image_url",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["provider", "uid"], name: "index_users_on_provider_and_uid", unique: true

end
