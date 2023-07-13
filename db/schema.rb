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

ActiveRecord::Schema[7.0].define(version: 2023_07_13_004636) do
  create_table "developers", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sprint_it"
    t.integer "sprint_id"
    t.integer "project_id"
  end

  create_table "pairings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sprint_id", null: false
    t.integer "developer1_id", null: false
    t.integer "developer2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "project_id"
    t.index ["developer1_id"], name: "index_pairings_on_developer1_id"
    t.index ["developer2_id"], name: "index_pairings_on_developer2_id"
    t.index ["sprint_id"], name: "index_pairings_on_sprint_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "lead_developer_id"
    t.string "name"
    t.text "description"
    t.string "status"
    t.integer "user_id"
    t.integer "manager_id"
    t.string "source_url"
    t.boolean "is_complete"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_sprints"
  end

  create_table "pto_requests", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "developer_id", null: false
    t.string "status"
    t.datetime "approved_at"
    t.integer "manager_id"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_pto_requests_on_developer_id"
  end

  create_table "sprints", force: :cascade do |t|
    t.integer "number"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_active"
    t.boolean "is_successful"
    t.integer "kudos_id"
    t.integer "manager_id"
    t.integer "project_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "developer_id"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pairings", "developers", column: "developer1_id"
  add_foreign_key "pairings", "developers", column: "developer2_id"
  add_foreign_key "pairings", "sprints"
  add_foreign_key "pto_requests", "developers"
end
