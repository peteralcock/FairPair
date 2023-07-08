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

ActiveRecord::Schema[7.0].define(version: 2023_07_08_224406) do
  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.integer "employee_id"
    t.integer "kudos"
    t.integer "current_sprint_id"
    t.integer "current_pairing_id"
    t.string "job_title"
    t.boolean "is_on_pto"
    t.integer "manager_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pairings", force: :cascade do |t|
    t.integer "developer1_id"
    t.integer "developer2_id"
    t.integer "manager_id"
    t.integer "user_id"
    t.integer "sprint_id"
    t.integer "kudos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sprints", force: :cascade do |t|
    t.integer "number"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean "is_active"
    t.boolean "is_successful"
    t.integer "kudos_id"
    t.integer "manager_id"
    t.integer "user_id"
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
