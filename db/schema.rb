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

ActiveRecord::Schema.define(:version => 20120323121345) do

  create_table "emps", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emps_qualifications", :id => false, :force => true do |t|
    t.integer "qualification_id"
    t.integer "emp_id"
  end

  add_index "emps_qualifications", ["emp_id", "qualification_id"], :name => "index_emps_qualifications_on_emp_id_and_qualification_id"

  create_table "qualifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
