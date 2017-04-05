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

ActiveRecord::Schema.define(version: 20170330040425) do

  create_table "adhoq_executions", force: :cascade do |t|
    t.integer  "query_id",                            null: false
    t.text     "raw_sql",                             null: false
    t.string   "report_format",                       null: false
    t.string   "status",        default: "requested", null: false
    t.text     "log"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "adhoq_queries", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.text     "query"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "adhoq_reports", force: :cascade do |t|
    t.integer  "execution_id", null: false
    t.string   "identifier",   null: false
    t.time     "generated_at", null: false
    t.string   "storage",      null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "adhoq_reports", ["execution_id"], name: "index_adhoq_reports_on_execution_id"

  create_table "crop_names", force: :cascade do |t|
    t.string   "CropName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "email_list_type_people", force: :cascade do |t|
    t.integer  "PersonalID"
    t.text     "EmailListType"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "email_list_types", force: :cascade do |t|
    t.text     "ListType"
    t.text     "ListTypeDescription"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "event_roles", force: :cascade do |t|
    t.text     "EventRole"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "event_types", force: :cascade do |t|
    t.text     "EventType"
    t.text     "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.text     "EventName"
    t.date     "EventDate"
    t.time     "EventStartTime"
    t.integer  "EventHours"
    t.text     "Eventlocation"
    t.integer  "NumberAttended"
    t.text     "ProgramName"
    t.date     "ProgramStartDate"
    t.text     "GardenName"
    t.text     "EventType"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "events_people", force: :cascade do |t|
    t.integer  "PersonalID"
    t.text     "EventName"
    t.date     "EventDate"
    t.integer  "HoursWorked"
    t.text     "EventRole"
    t.text     "OrganizationName"
    t.text     "SubOrganizationName"
    t.text     "Grade"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.text     "PersonName"
  end

  create_table "garden_crops", force: :cascade do |t|
    t.text     "GardenName"
    t.text     "CropName"
    t.date     "DatePlanted"
    t.integer  "RowFeet"
    t.date     "DateHarvested"
    t.integer  "PoundsHarvested"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "garden_inventories", force: :cascade do |t|
    t.text     "GardenName"
    t.text     "ToolName"
    t.integer  "Count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.text     "GardenName"
    t.text     "GardenLocation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "grades", force: :cascade do |t|
    t.integer  "Grade"
    t.text     "GradeDescription"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "how_givens", force: :cascade do |t|
    t.text     "HowGiven"
    t.text     "HowGivenDescription"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "organization_types", force: :cascade do |t|
    t.text     "OrganizationType"
    t.text     "OrganizationTypeDescription"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "organizational_primary_roles", force: :cascade do |t|
    t.string   "PrimaryRole"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.text     "OrganizationName"
    t.text     "OrganizationType"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "people", force: :cascade do |t|
    t.integer  "PersonalID"
    t.text     "LastName"
    t.text     "Firstname"
    t.text     "EmailAddress"
    t.integer  "Age"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "people_organizations", force: :cascade do |t|
    t.integer  "PersonalID"
    t.text     "OrganizationName"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "people_person_types", force: :cascade do |t|
    t.integer  "PersonalID"
    t.text     "PersonType"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "persont_types", force: :cascade do |t|
    t.text     "PersonType"
    t.text     "PersonTypeDescription"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "produce_givens", force: :cascade do |t|
    t.text     "CropName"
    t.date     "DateGive"
    t.text     "HowGiven"
    t.integer  "PoundsGiven"
    t.integer  "ValueGiven"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "programs", force: :cascade do |t|
    t.text     "ProgramName"
    t.date     "ProgramStartDate"
    t.date     "ProgramEndDate"
    t.text     "ProgramDescription"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "resource_transactions", force: :cascade do |t|
    t.text     "ResourceTransaction"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "resource_types", force: :cascade do |t|
    t.text     "ResourceType"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "resources", force: :cascade do |t|
    t.text     "ResourceName"
    t.date     "TransactionDate"
    t.text     "ResourceType"
    t.text     "ResourceTransaction"
    t.integer  "MonetaryValue"
    t.text     "NonMonetaryValue"
    t.integer  "ResourcePersonalID"
    t.text     "ResourceOrganization"
    t.integer  "DestinationPersonalID"
    t.text     "DestinationOrganization"
    t.text     "Description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "sub_organizations", force: :cascade do |t|
    t.text     "OrganizationName"
    t.text     "SubOrganizationName"
    t.text     "Description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "tool_names", force: :cascade do |t|
    t.string   "ToolName"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.text     "UserRole"
    t.text     "UserRoleDescription"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
