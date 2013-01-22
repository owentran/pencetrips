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

ActiveRecord::Schema.define(:version => 20130122062323) do

  create_table "credit_cards", :force => true do |t|
    t.string   "name"
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "packages", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "place_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "amount"
  end

  create_table "places", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "country"
  end

  create_table "trips", :force => true do |t|
    t.integer  "place_id"
    t.integer  "credit_card_id"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.integer  "total"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
