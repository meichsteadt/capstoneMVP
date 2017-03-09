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

ActiveRecord::Schema.define(version: 20170309032834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "store_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "slideshow_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "layouts", force: :cascade do |t|
    t.integer  "store_id"
    t.string   "store_copy"
    t.string   "store_image_file_name"
    t.string   "store_image_content_type"
    t.integer  "store_image_file_size"
    t.datetime "store_image_updated_at"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "css_id"
    t.text     "dining_copy"
    t.text     "living_copy"
    t.text     "bedroom_copy"
    t.text     "promo_copy"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.integer  "slideshow_id"
    t.integer  "price"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "category"
  end

  create_table "slideshows", force: :cascade do |t|
    t.integer  "layout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "hours"
    t.string   "facebook"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "email"
    t.string   "password_hash"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "instagram"
    t.string   "lat"
    t.string   "lng"
  end

end
