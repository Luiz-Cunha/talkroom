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

ActiveRecord::Schema[7.1].define(version: 2024_06_14_173551) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "counsellor_id"
    t.datetime "schedule_time"
    t.boolean "confirmation", default: false
    t.text "symptom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
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

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "fullname"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.date "birthdate"
    t.string "gender"
    t.string "location"
    t.integer "counsellor_id"
    t.string "university_name"
    t.string "university_id"
    t.string "degree_program"
    t.integer "year_of_study"
    t.date "expected_graduation_date"
    t.boolean "counseling_experience"
    t.text "counseling_experience_description"
    t.boolean "consent"
    t.boolean "terms_conditions"
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
    t.string "fullname"
    t.date "birthdate"
    t.string "gender"
    t.string "location"
    t.text "received_counseling_description"
    t.boolean "received_counseling_before"
    t.string "other_issues"
    t.boolean "consent"
    t.boolean "terms_conditions"
    t.string "issues_array", default: [], array: true
    t.text "consultation_history"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "counsellors"
  add_foreign_key "appointments", "users"
  add_foreign_key "client_chatrooms", "counsellors"
  add_foreign_key "client_chatrooms", "users"
  add_foreign_key "counsellor_chatrooms", "counsellors"
  add_foreign_key "counsellor_chatrooms", "supervisors"
end
