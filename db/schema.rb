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

ActiveRecord::Schema.define(version: 20200227224600) do

  create_table "adminusers", force: :cascade do |t|
    t.string "name", null: false
    t.string "mail", null: false
    t.string "password_digest", null: false
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "article_sales", force: :cascade do |t|
    t.integer "article_id"
    t.integer "sales_type"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.string "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coments", force: :cascade do |t|
    t.string "key"
    t.string "name"
    t.string "coment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_category_relations", force: :cascade do |t|
    t.integer "post_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "key"
    t.string "thumbnail_path"
    t.string "title"
    t.date "date"
    t.string "author_key"
    t.text "content"
    t.text "pickup_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
