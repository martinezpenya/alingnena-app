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

ActiveRecord::Schema.define(:version => 20120920205148) do

  create_table "debts", :force => true do |t|
    t.string   "name"
    t.text     "item"
    t.decimal  "amount",     :precision => 10, :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.text     "remarks"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "purchase_id"
    t.string   "reference_number"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "invoices", ["purchase_id"], :name => "index_invoices_on_purchase_id"

  create_table "line_items", :force => true do |t|
    t.integer  "purchase_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.decimal  "cost",        :precision => 10, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  add_index "line_items", ["product_id"], :name => "index_line_items_on_product_id"
  add_index "line_items", ["purchase_id"], :name => "index_line_items_on_purchase_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "cost",        :precision => 10, :scale => 0
    t.integer  "stock"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "products_purchases", :id => false, :force => true do |t|
    t.integer "product_id"
    t.integer "purchase_id"
  end

  create_table "purchases", :force => true do |t|
    t.text     "description"
    t.date     "delivered_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "supplier_id"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "contact_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
