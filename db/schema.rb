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

ActiveRecord::Schema.define(version: 2018_07_27_020315) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "gozip_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gozip_id"], name: "index_comments_on_gozip_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "gozips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "like_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_gozips_on_comment_id"
    t.index ["like_id"], name: "index_gozips_on_like_id"
    t.index ["user_id"], name: "index_gozips_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "gozip_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gozip_id"], name: "index_likes_on_gozip_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.text "content"
    t.datetime "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_private_messages_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.integer "gozip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gozip_id"], name: "index_tags_on_gozip_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
