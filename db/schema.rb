# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090821090447) do

  create_table "documents", :force => true do |t|
    t.string   "filename"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.string   "title"
  end

  create_table "logs", :force => true do |t|
    t.integer  "project_id"
    t.decimal  "change",     :precision => 10, :scale => 2, :default => 0.0
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ltype"
    t.integer  "user_id"
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "incharge"
    t.string   "codename"
    t.decimal  "finished",   :precision => 10, :scale => 2, :default => 0.0
    t.string   "longaim"
    t.text     "todo"
  end

  create_table "projects_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "project_id"
  end

  create_table "replies", :force => true do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
  end

  create_table "topics", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.string   "school"
    t.string   "department"
    t.string   "major"
    t.string   "mobile"
    t.string   "home"
    t.string   "dorm"
    t.string   "QQ"
    t.string   "homeaddr"
    t.string   "schaddr"
    t.string   "homepostcode"
    t.string   "schpostcode"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
