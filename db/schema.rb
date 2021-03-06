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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120111235436) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address1"
    t.string   "address2"
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "zip"
    t.string   "email1"
    t.string   "email2"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "picture"
    t.decimal  "cost"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  add_index "dishes", ["company_id"], :name => "index_dishes_on_company_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "password"
    t.string   "picture"
    t.string   "profile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
