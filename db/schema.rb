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

ActiveRecord::Schema.define(version: 20141227220332) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "meals", force: true do |t|
    t.datetime "date_eaten"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portions", force: true do |t|
    t.integer  "meal_id"
    t.integer  "serving_id"
    t.integer  "grams"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servings", force: true do |t|
    t.string   "name"
    t.integer  "grams"
    t.integer  "calories"
    t.boolean  "susan_approved"
    t.integer  "susan_limit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.boolean  "confirmed"
    t.integer  "susan_rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
