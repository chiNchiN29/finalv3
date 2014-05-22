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

ActiveRecord::Schema.define(version: 20140522082104) do

  create_table "players", force: true do |t|
    t.integer  "round"
    t.string   "p1_name"
    t.string   "p2_name"
    t.integer  "p1_bet"
    t.integer  "p2_bet"
    t.integer  "p1_money"
    t.integer  "p2_money"
    t.string   "result"
    t.integer  "money"
    t.string   "winner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "p1card"
    t.string   "p2card"
  end

end
