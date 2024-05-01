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

ActiveRecord::Schema[7.1].define(version: 2024_05_01_064113) do
  create_table "animal_types", force: :cascade do |t|
    t.string "animal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "annual_crops", force: :cascade do |t|
    t.string "annual_crop_field"
    t.integer "anual_crop_acre"
    t.string "annual_crop_this_year"
    t.string "annual_crop_organic"
    t.string "annual_crop_last_year"
    t.boolean "annual_crop_last_year_organic"
    t.string "annual_crop_two_years_ago"
    t.boolean "annual_crop_two_years_ago_organic"
    t.string "annual_crop_field2"
    t.integer "anual_crop_acre2"
    t.string "annual_crop_this_year2"
    t.string "annual_crop_organic2"
    t.string "annual_crop_last_year2"
    t.boolean "annual_crop_last_year_organic2"
    t.string "annual_crop_two_years_ago2"
    t.boolean "annual_crop_two_years_ago_organic2"
    t.string "annual_crop_field3"
    t.integer "anual_crop_acre3"
    t.string "annual_crop_this_year3"
    t.string "annual_crop_organic3"
    t.string "annual_crop_last_year3"
    t.boolean "annual_crop_last_year_organic3"
    t.string "annual_crop_two_years_ago3"
    t.boolean "annual_crop_two_years_ago_organic3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmers", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "nida"
    t.integer "village_id", null: false
    t.integer "parish_id", null: false
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "field_name"
    t.integer "crop"
    t.integer "acre"
    t.integer "tree"
    t.date "date_planted"
    t.integer "est_yield"
    t.string "last_used_chemical"
    t.boolean "organic"
    t.string "field_name2"
    t.integer "crop2"
    t.integer "acre2"
    t.integer "tree2"
    t.date "date_planted2"
    t.integer "est_yield2"
    t.string "last_used_chemical2"
    t.boolean "organic2"
    t.string "field_name3"
    t.integer "crop3"
    t.integer "acre3"
    t.integer "tree3"
    t.date "date_planted3"
    t.integer "est_yield3"
    t.string "last_used_chemical3"
    t.boolean "organic3"
    t.string "annual_crop_field"
    t.integer "anual_crop_acre"
    t.string "annual_crop_this_year"
    t.string "annual_crop_organic"
    t.string "annual_crop_last_year"
    t.boolean "annual_crop_last_year_organic"
    t.string "annual_crop_two_years_ago"
    t.boolean "annual_crop_two_years_ago_organic"
    t.string "annual_crop_field2"
    t.integer "anual_crop_acre2"
    t.string "annual_crop_this_year2"
    t.string "annual_crop_organic2"
    t.string "annual_crop_last_year2"
    t.boolean "annual_crop_last_year_organic2"
    t.string "annual_crop_two_years_ago2"
    t.boolean "annual_crop_two_years_ago_organic2"
    t.string "annual_crop_field3"
    t.integer "anual_crop_acre3"
    t.string "annual_crop_this_year3"
    t.string "annual_crop_organic3"
    t.string "annual_crop_last_year3"
    t.boolean "annual_crop_last_year_organic3"
    t.string "annual_crop_two_years_ago3"
    t.boolean "annual_crop_two_years_ago_organic3"
    t.integer "animal"
    t.integer "animal_total"
    t.boolean "animal_organic"
    t.text "animal_comment"
    t.integer "animal2"
    t.integer "animal_total2"
    t.boolean "animal_organic2"
    t.text "animal_comment2"
    t.integer "animal_animal3"
    t.integer "animal_total3"
    t.boolean "animal_organic3"
    t.text "animal_comment3"
    t.integer "animal_animal4"
    t.integer "animal_total4"
    t.boolean "animal_organic4"
    t.text "animal_comment4"
    t.index ["parish_id"], name: "index_farmers_on_parish_id"
    t.index ["village_id"], name: "index_farmers_on_village_id"
  end

  create_table "parishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permanent_crops", force: :cascade do |t|
    t.string "field_name"
    t.integer "crop_id", null: false
    t.integer "acres"
    t.integer "number_of_trees"
    t.date "date_planted"
    t.date "estimated_yield"
    t.string "last_chemical"
    t.boolean "organic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_permanent_crops_on_crop_id"
  end

  create_table "villages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "farmers", "parishes"
  add_foreign_key "farmers", "villages"
  add_foreign_key "permanent_crops", "crops"
end
