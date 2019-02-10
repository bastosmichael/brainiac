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

ActiveRecord::Schema.define(version: 2019_02_10_212816) do

  create_table "base_pages", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.string "parser"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_base_pages_on_id"
  end

  create_table "base_uris", id: false, force: :cascade do |t|
    t.string "id", null: false
    t.string "url", null: false
    t.string "crawler"
    t.integer "status"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_base_uris_on_id"
    t.index ["url"], name: "index_base_uris_on_url"
  end

end
