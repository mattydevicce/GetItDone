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

ActiveRecord::Schema.define(version: 20151106192811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "est_time"
    t.string   "cost"
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "project_pic_file_name"
    t.string   "project_pic_content_type"
    t.integer  "project_pic_file_size"
    t.datetime "project_pic_updated_at"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id", using: :btree

  create_table "steps", force: :cascade do |t|
    t.text     "description"
    t.integer  "rank"
    t.integer  "project_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "title"
    t.string   "step_pic_file_name"
    t.string   "step_pic_content_type"
    t.integer  "step_pic_file_size"
    t.datetime "step_pic_updated_at"
  end

  add_index "steps", ["project_id"], name: "index_steps_on_project_id", using: :btree

  create_table "toolboxes", force: :cascade do |t|
    t.string   "item"
    t.string   "cost"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "toolboxes", ["user_id"], name: "index_toolboxes_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "projects", "users"
  add_foreign_key "steps", "projects"
  add_foreign_key "toolboxes", "users"
end
