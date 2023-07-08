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

ActiveRecord::Schema[7.0].define(version: 2023_07_08_220700) do
  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "source_url"
    t.string "youtube_url"
    t.string "image_url"
    t.string "thumbnail_url"
    t.text "instructions"
    t.text "grocery_list"
    t.string "ingredient_1"
    t.string "ingredient_2"
    t.string "ingredient_3"
    t.string "ingredient_4"
    t.string "ingredient_5"
    t.string "ingredient_6"
    t.string "ingredient_7"
    t.string "ingredient_8"
    t.string "ingredient_9"
    t.string "ingredient_10"
    t.string "ingredient_11"
    t.string "ingredient_12"
    t.string "ingredient_13"
    t.string "ingredient_14"
    t.string "ingredient_15"
    t.string "ingredient_16"
    t.string "ingredient_17"
    t.string "ingredient_18"
    t.string "ingredient_19"
    t.string "ingredient_20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
