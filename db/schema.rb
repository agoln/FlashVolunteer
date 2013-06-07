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

ActiveRecord::Schema.define(:version => 20130415042629) do

  create_table "afg_opportunities", :force => true do |t|
    t.string   "key"
    t.boolean  "imported",                   :default => false
    t.string   "title"
    t.string   "latlong"
    t.string   "location_name"
    t.datetime "startDate"
    t.datetime "endDate"
    t.string   "sponsoringOrganizationName"
    t.string   "xml_url"
    t.string   "skills"
    t.string   "city"
    t.text     "description"
    t.boolean  "reverse_geocoded",           :default => false
    t.string   "street"
    t.string   "neighborhood_string"
    t.string   "zip"
  end

  create_table "checkins", :force => true do |t|
    t.integer "event_id"
    t.integer "user_id"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "events", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.date     "created"
    t.datetime "start"
    t.datetime "end"
    t.integer  "neighborhood_id"
    t.integer  "creator_id"
    t.integer  "User_id"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "state",                       :default => "WA"
    t.string   "website"
    t.text     "special_instructions"
    t.string   "twitter_hashtags"
    t.string   "hosted_by"
    t.string   "photo_featured_file_name"
    t.string   "photo_featured_content_type"
    t.integer  "photo_featured_file_size"
    t.datetime "photo_featured_updated_at"
    t.string   "photo_2_file_name"
    t.string   "photo_2_content_type"
    t.integer  "photo_2_file_size"
    t.datetime "photo_2_updated_at"
    t.string   "photo_3_file_name"
    t.string   "photo_3_content_type"
    t.integer  "photo_3_file_size"
    t.datetime "photo_3_updated_at"
    t.string   "photo_4_file_name"
    t.string   "photo_4_content_type"
    t.integer  "photo_4_file_size"
    t.datetime "photo_4_updated_at"
    t.string   "photo_5_file_name"
    t.string   "photo_5_content_type"
    t.integer  "photo_5_file_size"
    t.datetime "photo_5_updated_at"
    t.boolean  "featured",                    :default => false
    t.integer  "vm_id",                       :default => 0
  end

  create_table "help_articles", :force => true do |t|
    t.string "title"
    t.text   "description"
  end

# Could not dump table "neighborhoods" because of following StandardError
#   Unknown type 'polygon' for column 'region'

  create_table "notifications", :force => true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "orgs_admins", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "org_id"
  end

  create_table "orgs_followers", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "org_id"
  end

  create_table "participations", :force => true do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.integer "hours_volunteered"
  end

  create_table "privacies", :force => true do |t|
    t.integer "user_id"
    t.string  "upcoming_events", :default => "everyone"
  end

  create_table "props", :force => true do |t|
    t.integer  "giver_id"
    t.integer  "receiver_id"
    t.text     "message"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "searches", :force => true do |t|
    t.string  "query"
    t.integer "users_found",         :default => 0
    t.integer "orgs_found",          :default => 0
    t.integer "events_found",        :default => 0
    t.integer "help_articles_found", :default => 0
  end

  create_table "skills", :force => true do |t|
    t.string  "name"
    t.integer "offset"
  end

  create_table "skills_events", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "event_id"
  end

  create_table "skills_users", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "user_id"
  end

  create_table "sponsors", :force => true do |t|
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "url"
    t.string   "name"
  end

  create_table "user_notifications", :force => true do |t|
    t.integer "notification_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "neighborhood_id"
    t.date     "birthday"
    t.integer  "org_id"
    t.string   "type"
    t.string   "mission"
    t.string   "vision"
    t.text     "description"
    t.text     "website"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_followers", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "follower_id"
  end

  create_table "volunteer_match_metadata", :force => true do |t|
  end

  create_table "volunteer_matches", :force => true do |t|
    t.integer  "vm_id"
    t.boolean  "imported",                :default => false
    t.boolean  "allow_group_invitations"
    t.boolean  "allow_group_reservation"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "beneficiary"
    t.string   "category_ids"
    t.string   "contact_email"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.datetime "created"
    t.text     "description"
    t.string   "great_for"
    t.boolean  "has_wait_list"
    t.string   "image_url"
    t.integer  "minimum_age"
    t.integer  "num_referred"
    t.boolean  "requires_address"
    t.text     "requirements"
    t.text     "skills_needed"
    t.integer  "spaces_available"
    t.string   "status"
    t.string   "tags"
    t.string   "title"
    t.boolean  "virtual"
    t.string   "vm_url"
    t.integer  "volunteers_needed"
    t.boolean  "reverse_geocoded",        :default => false
    t.string   "street"
    t.string   "neighborhood_string"
    t.string   "city"
    t.string   "zip"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
  end

end
