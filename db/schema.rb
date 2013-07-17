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

ActiveRecord::Schema.define(:version => 20130717105639) do

  create_table "flat_happenings", :force => true do |t|
    t.string   "classification"
    t.string   "language"
    t.string   "name"
    t.text     "description_text"
    t.text     "description_html"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "timezone"
    t.float    "longitude"
    t.float    "latitude"
    t.text     "address"
    t.string   "city"
    t.string   "region"
    t.string   "postal_code"
    t.string   "country"
    t.text     "meta"
    t.text     "people"
    t.text     "venue"
    t.text     "tickets"
    t.text     "images"
    t.text     "tags"
    t.text     "urls"
    t.boolean  "recurring"
    t.text     "recurring_details"
    t.boolean  "cancelled"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
