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

ActiveRecord::Schema.define(version: 20140630130103) do

  create_table "lovers", force: true do |t|
    t.string   "name"
    t.string   "secret_answer"
    t.string   "secret_question"
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.integer  "lover_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lovers", ["lover_id"], name: "index_lovers_on_lover_id"

  create_table "memories", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "private"
    t.integer  "lover_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "memories", ["lover_id"], name: "index_memories_on_lover_id"

end
