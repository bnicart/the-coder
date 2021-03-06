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

ActiveRecord::Schema.define(version: 20170709151916) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "points"
    t.decimal  "distributor_price"
    t.decimal  "customer_price"
    t.string   "quantity"
    t.string   "image"
    t.string   "supplement_facts"
    t.text     "description"
    t.string   "short_description"
    t.string   "how_to_use"
    t.text     "trivia"
    t.text     "who_can_benefit"
    t.text     "additional_info"
    t.string   "fda_link"
    t.string   "item_code"
    t.string   "type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "tils", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
