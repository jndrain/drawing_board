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

ActiveRecord::Schema.define(version: 20161027232557) do

  create_table "artists", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "uname"
    t.text     "bio"
    t.string   "email"
    t.string   "password_digest"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "collabs", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "collabs", ["artist_id"], name: "index_collabs_on_artist_id"
  add_index "collabs", ["project_id"], name: "index_collabs_on_project_id"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "project_id"
    t.integer  "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["artist_id"], name: "index_comments_on_artist_id"
  add_index "comments", ["project_id"], name: "index_comments_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "media"
    t.integer  "artist_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "projects", ["artist_id"], name: "index_projects_on_artist_id"

end
