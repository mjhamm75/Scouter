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

ActiveRecord::Schema.define(:version => 20121026023234) do

  create_table "advancements", :force => true do |t|
    t.integer  "scout_id"
    t.string   "rank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "boy_scout_ranks", :force => true do |t|
    t.integer  "advancement_id"
    t.string   "one_pi"
    t.date     "one_pi_date"
    t.string   "one_li"
    t.date     "one_li_date"
    t.string   "two_pi"
    t.date     "two_pi_date"
    t.string   "two_li"
    t.date     "two_li_date"
    t.string   "three_pi"
    t.date     "three_pi_date"
    t.string   "three_li"
    t.date     "three_li_date"
    t.string   "four_pi"
    t.date     "four_pi_date"
    t.string   "four_li"
    t.date     "four_li_date"
    t.string   "five_pi"
    t.date     "five_pi_date"
    t.string   "five_li"
    t.date     "five_li_date"
    t.string   "six_pi"
    t.date     "six_pi_date"
    t.string   "six_li"
    t.date     "six_li_date"
    t.string   "seven_pi"
    t.date     "seven_pi_date"
    t.string   "seven_li"
    t.date     "seven_li_date"
    t.string   "eight_pi"
    t.date     "eight_pi_date"
    t.string   "eight_li"
    t.date     "eight_li_date"
    t.string   "nine_pi"
    t.date     "nine_pi_date"
    t.string   "nine_li"
    t.date     "nine_li_date"
    t.string   "ten_pi"
    t.date     "ten_pi_date"
    t.string   "ten_li"
    t.date     "ten_li_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "scouts", :force => true do |t|
    t.string   "name"
    t.date     "birthday"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "star_ranks", :force => true do |t|
    t.integer  "advancement_id"
    t.string   "one_pi"
    t.date     "one_pi_date"
    t.string   "one_li"
    t.date     "one_li_date"
    t.string   "two_pi"
    t.date     "two_pi_date"
    t.string   "two_li"
    t.date     "two_li_date"
    t.string   "three_pi"
    t.date     "three_pi_date"
    t.string   "three_li"
    t.date     "three_li_date"
    t.string   "four_pi"
    t.date     "four_pi_date"
    t.string   "four_li"
    t.date     "four_li_date"
    t.string   "five_pi"
    t.date     "five_pi_date"
    t.string   "five_li"
    t.date     "five_li_date"
    t.string   "six_pi"
    t.date     "six_pi_date"
    t.string   "six_li"
    t.date     "six_li_date"
    t.string   "seven_pi"
    t.date     "seven_pi_date"
    t.string   "seven_li"
    t.date     "seven_li_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
