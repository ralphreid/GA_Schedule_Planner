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

ActiveRecord::Schema.define(:version => 20131030162008) do

  create_table "authorizations", :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  create_table "classrooms", :force => true do |t|
    t.string  "name"
    t.integer "capacity"
    t.string  "av_resources"
    t.string  "location"
    t.text    "location_url"
  end

  create_table "courses", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.string  "status"
    t.integer "user_id"
  end

  create_table "enrollments", :force => true do |t|
    t.integer "student_id"
    t.integer "lesson_id"
    t.string  "payment_status"
  end

  create_table "instructor_allocations", :force => true do |t|
    t.integer "instructor_id"
    t.integer "lesson_id"
  end

  create_table "lessons", :force => true do |t|
    t.integer "course_id"
    t.string  "frequency"
    t.text    "url"
    t.date    "start"
    t.date    "end"
  end

  create_table "roles", :force => true do |t|
    t.string "name"
    t.string "description"
  end

  create_table "room_bookings", :force => true do |t|
    t.integer "lesson_id"
    t.integer "classroom_id"
    t.date    "start"
    t.date    "finish"
  end

  create_table "users", :force => true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
