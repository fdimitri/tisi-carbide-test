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

ActiveRecord::Schema.define(version: 20150608192004) do

  create_table "Tickets", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.text     "reproSteps"
    t.integer  "User_id"
    t.integer  "AssignedUser_id"
    t.integer  "Priority_id"
    t.integer  "State_id"
    t.integer  "osdef_id"
    t.integer  "Hardware_id"
    t.integer  "TicketCategory_id"
    t.integer  "TicketGroup_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "Tickets", ["AssignedUser_id"], name: "index_tickets_on_AssignedUser_id"
  add_index "Tickets", ["Hardware_id"], name: "index_tickets_on_Hardware_id"
  add_index "Tickets", ["Priority_id"], name: "index_tickets_on_Priority_id"
  add_index "Tickets", ["State_id"], name: "index_tickets_on_State_id"
  add_index "Tickets", ["TicketCategory_id"], name: "index_tickets_on_TicketCategory_id"
  add_index "Tickets", ["TicketGroup_id"], name: "index_tickets_on_TicketGroup_id"
  add_index "Tickets", ["User_id"], name: "index_tickets_on_User_id"
  add_index "Tickets", ["osdef_id"], name: "index_tickets_on_osdef_id"

  create_table "hardwares", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "osdefs", force: :cascade do |t|
    t.string   "name"
    t.string   "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "enum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ticket_categories", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "User_id"
    t.integer  "TicketGroup_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "ticket_categories", ["TicketGroup_id"], name: "index_ticket_categories_on_TicketGroup_id"
  add_index "ticket_categories", ["User_id"], name: "index_ticket_categories_on_User_id"

  create_table "ticket_groups", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.integer  "User_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ticket_groups", ["User_id"], name: "index_ticket_groups_on_User_id"

  create_table "ticket_updates", force: :cascade do |t|
    t.string   "title"
    t.text     "desc"
    t.integer  "Ticket_id"
    t.integer  "User_id"
    t.integer  "AssignedUser_id"
    t.integer  "State_id"
    t.integer  "Priority_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "ticket_updates", ["AssignedUser_id"], name: "index_ticket_updates_on_AssignedUser_id"
  add_index "ticket_updates", ["Priority_id"], name: "index_ticket_updates_on_Priority_id"
  add_index "ticket_updates", ["State_id"], name: "index_ticket_updates_on_State_id"
  add_index "ticket_updates", ["Ticket_id"], name: "index_ticket_updates_on_Ticket_id"
  add_index "ticket_updates", ["User_id"], name: "index_ticket_updates_on_User_id"

  create_table "users", force: :cascade do |t|
    t.string   "userName"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "eMail"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
