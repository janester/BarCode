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

ActiveRecord::Schema.define(:version => 20130417171521) do

  create_table "activities", :force => true do |t|
    t.string   "text"
    t.integer  "venue_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "response_type"
  end

  create_table "availabilities", :force => true do |t|
    t.date     "date"
    t.string   "promotion"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "badges", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "points"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "badges_users", :id => false, :force => true do |t|
    t.integer "badge_id"
    t.integer "item_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories_venues", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "venue_id"
  end

  create_table "check_ins", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.integer  "stop_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pub_crawls", :force => true do |t|
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pub_crawls_users", :id => false, :force => true do |t|
    t.integer "pub_crawl_id"
    t.integer "user_id"
  end

  create_table "responses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "stop_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "response_type"
    t.string   "image"
    t.string   "text"
  end

  create_table "stops", :force => true do |t|
    t.integer  "pub_crawl_id"
    t.integer  "venue_id"
    t.integer  "activity_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone"
    t.boolean  "is_owner"
    t.string   "address"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "venues", :force => true do |t|
    t.integer  "user_id"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "image"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
