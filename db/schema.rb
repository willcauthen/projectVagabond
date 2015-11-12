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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151112202654) do
=======
ActiveRecord::Schema.define(version: 20151112200418) do
>>>>>>> b73ab54e69299b3b508b681e9fca792e304f0eb7

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "post_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "post_users", ["post_id"], name: "index_post_users_on_post_id", using: :btree
  add_index "post_users", ["user_id"], name: "index_post_users_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string   "city"
    t.string   "title"
    t.string   "user"
    t.string   "content"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> b73ab54e69299b3b508b681e9fca792e304f0eb7
  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "current_city"
    t.string   "about"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

<<<<<<< HEAD
  add_foreign_key "post_users", "posts"
  add_foreign_key "post_users", "users"
=======
>>>>>>> b73ab54e69299b3b508b681e9fca792e304f0eb7
end
