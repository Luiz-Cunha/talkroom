# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_06_10_195912) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "counsellor_id", null: false
    t.datetime "schedule_time"
    t.boolean "confirmation"
    t.text "symptom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_appointments_on_counsellor_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "client_chatrooms", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "counsellor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_client_chatrooms_on_counsellor_id"
    t.index ["user_id"], name: "index_client_chatrooms_on_user_id"
  end

  create_table "counsellor_chatrooms", force: :cascade do |t|
    t.bigint "counsellor_id", null: false
    t.bigint "supervisor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["counsellor_id"], name: "index_counsellor_chatrooms_on_counsellor_id"
    t.index ["supervisor_id"], name: "index_counsellor_chatrooms_on_supervisor_id"
  end

  create_table "counsellors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_counsellors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_counsellors_on_reset_password_token", unique: true
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.string "sendable_type"
    t.bigint "sendable_id"
    t.string "chatroomable_type"
    t.bigint "chatroomable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroomable_type", "chatroomable_id"], name: "index_messages_on_chatroomable"
    t.index ["sendable_type", "sendable_id"], name: "index_messages_on_sendable"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_supervisors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_supervisors_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "counsellors"
  add_foreign_key "appointments", "users"
  add_foreign_key "client_chatrooms", "counsellors"
  add_foreign_key "client_chatrooms", "users"
  add_foreign_key "counsellor_chatrooms", "counsellors"
  add_foreign_key "counsellor_chatrooms", "supervisors"
end
