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

ActiveRecord::Schema.define(version: 20160327054102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "users", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "username",   :null=>false, :index=>{:name=>"index_users_on_username", :unique=>true}
    t.string   "email",      :null=>false, :index=>{:name=>"index_users_on_email", :unique=>true}
    t.string   "first_name", :null=>false
    t.string   "last_name",  :null=>false
    t.string   "location",   :null=>false
    t.datetime "created_at", :null=>false
    t.datetime "updated_at", :null=>false
  end

  create_table "profiles", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "user_id",         :null=>false, :index=>{:name=>"index_profiles_on_user_id"}, :foreign_key=>{:references=>"users", :name=>"fk_profiles_user_id", :on_update=>:no_action, :on_delete=>:cascade}
    t.string   "about",           :null=>false
    t.string   "main_image_link"
    t.datetime "created_at",      :null=>false
    t.datetime "updated_at",      :null=>false
  end

  create_table "skills", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "user_id",     :null=>false, :index=>{:name=>"index_skills_on_user_id"}, :foreign_key=>{:references=>"users", :name=>"fk_skills_user_id", :on_update=>:no_action, :on_delete=>:cascade}
    t.string   "title",       :null=>false
    t.string   "disciplines"
    t.datetime "created_at",  :null=>false
    t.datetime "updated_at",  :null=>false
  end

  create_table "work_experiences", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "user_id",       :null=>false, :index=>{:name=>"index_work_experiences_on_user_id"}, :foreign_key=>{:references=>"users", :name=>"fk_work_experiences_user_id", :on_update=>:no_action, :on_delete=>:cascade}
    t.string   "employer",      :null=>false, :index=>{:name=>"index_work_experiences_on_employer"}
    t.string   "employer_link"
    t.string   "title"
    t.string   "summary"
    t.date     "start_date",    :null=>false
    t.date     "end_date"
    t.datetime "created_at",    :null=>false
    t.datetime "updated_at",    :null=>false
  end

  create_table "work_details", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.uuid     "work_experience_id", :null=>false, :index=>{:name=>"index_work_details_on_work_experience_id"}, :foreign_key=>{:references=>"work_experiences", :name=>"fk_work_details_work_experience_id", :on_update=>:no_action, :on_delete=>:cascade}
    t.string   "detail"
    t.datetime "created_at",         :null=>false
    t.datetime "updated_at",         :null=>false
  end

end
