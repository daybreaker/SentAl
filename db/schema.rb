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

ActiveRecord::Schema.define(:version => 20110228031448) do

  create_table "companies", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "term"
    t.float    "index"
    t.integer  "positive"
    t.integer  "negative"
    t.integer  "nuetral"
    t.date     "last_refresh"
  end

  create_table "tweets", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "from_user_id"
    t.string   "profile_image_url"
    t.string   "tweet_created_at"
    t.string   "from_user"
    t.integer  "tweet_id"
    t.integer  "sentiment"
    t.integer  "to_user_id"
    t.string   "tweet_text"
    t.string   "to_user"
    t.string   "geo"
    t.string   "iso_language_code"
    t.string   "source"
  end

end
