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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141007064104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mealplan_items", force: true do |t|
    t.integer  "mealplan_id"
    t.integer  "recipe_id"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mealplans", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mealplans_recipes", force: true do |t|
    t.integer "mealplan_id"
    t.integer "recipe_id"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "recipe_unique_id"
    t.string   "cuisine"
    t.integer  "calories"
    t.string   "ingredients"
    t.integer  "preparationtime"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.text     "avatar",          default: "https://pbs.twimg.com/profile_images/378800000186293328/5a2b472f4b58080a1f45ca9884cf03d9.jpeg"
  end

end
