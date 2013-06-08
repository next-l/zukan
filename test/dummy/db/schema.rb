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

ActiveRecord::Schema.define(:version => 20130608065634) do

  create_table "controlled_access_points", :force => true do |t|
    t.text     "base_access_point"
    t.string   "type_of_controlled_access_point"
    t.string   "language_of_base_access_point"
    t.text     "source_of_controlled_access_point"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "name_has_access_points", :force => true do |t|
    t.integer  "name_id"
    t.integer  "controlled_access_point_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  add_index "name_has_access_points", ["controlled_access_point_id"], :name => "index_name_has_access_points_on_controlled_access_point_id"
  add_index "name_has_access_points", ["name_id"], :name => "index_name_has_access_points_on_name_id"

  create_table "names", :force => true do |t|
    t.text     "type_of_name"
    t.text     "name_string"
    t.text     "scope_of_usage"
    t.datetime "dates_of_usage"
    t.string   "language_of_name"
    t.text     "script_of_name"
    t.string   "transliteration_scheme_of_name"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.integer  "person_id"
    t.text     "note"
  end

  create_table "people", :force => true do |t|
    t.string   "title"
    t.datetime "date_of_birth"
    t.string   "place_of_birth"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
