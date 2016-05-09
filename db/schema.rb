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

ActiveRecord::Schema.define(version: 20160509145722) do

  create_table "courses", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "year",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credits", force: true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credits", ["course_id"], name: "index_credits_on_course_id"

  create_table "marks", force: true do |t|
    t.integer  "student_id"
    t.integer  "task_id"
    t.decimal  "score",      precision: 6, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "marks", ["student_id"], name: "index_marks_on_student_id"
  add_index "marks", ["task_id"], name: "index_marks_on_task_id"

  create_table "registrations", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["course_id"], name: "index_registrations_on_course_id"
  add_index "registrations", ["student_id"], name: "index_registrations_on_student_id"

  create_table "students", force: true do |t|
    t.string   "number"
    t.string   "first"
    t.string   "last"
    t.string   "status"
    t.text     "comment"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "registered_for"
  end

  create_table "tasks", force: true do |t|
    t.date     "date"
    t.decimal  "points",     precision: 6, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "number"
    t.integer  "credit_id"
  end

  add_index "tasks", ["credit_id"], name: "index_tasks_on_credit_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["name"], name: "index_users_on_name", unique: true

end
