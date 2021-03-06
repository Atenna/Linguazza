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

ActiveRecord::Schema.define(:version => 20160101202058) do

  create_table "attempts", :force => true do |t|
    t.integer  "word_id"
    t.boolean  "is_correct"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "distance"
    t.integer  "user_id"
  end

  add_index "attempts", ["is_correct", "word_id"], :name => "index_attempts_on_is_correct_and_word_id"
  add_index "attempts", ["user_id"], :name => "index_attempts_on_user_id"
  add_index "attempts", ["word_id", "user_id"], :name => "index_attempts_on_word_id_and_user_id"
  add_index "attempts", ["word_id"], :name => "index_attempts_on_word_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graphs", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "language_from"
    t.string   "language_to"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["language_from", "language_to"], :name => "index_users_on_language_from_and_language_to"
  add_index "users", ["language_from"], :name => "index_users_on_language_from"
  add_index "users", ["language_to"], :name => "index_users_on_language_to"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "words", :force => true do |t|
    t.string   "rus"
    t.string   "slov"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ger"
  end

end
