# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_14_133139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "business_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "department_locations", force: :cascade do |t|
    t.bigint "department_id"
    t.string "location"
    t.index ["department_id"], name: "index_department_locations_on_department_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.integer "manager_ssn"
    t.date "mgr_start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "company_id"
    t.index ["company_id"], name: "index_departments_on_company_id"
  end

  create_table "dependents", force: :cascade do |t|
    t.bigint "essn_id"
    t.string "dependent_name"
    t.string "sex"
    t.date "birth_date"
    t.string "relationship"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["essn_id"], name: "index_dependents_on_essn_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birth_date"
    t.text "address"
    t.string "sex"
    t.decimal "salary"
    t.integer "super_ssn"
    t.bigint "department_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "dnum_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dnum_id"], name: "index_projects_on_dnum_id"
  end

  create_table "works_ons", force: :cascade do |t|
    t.bigint "essn_id"
    t.bigint "pno_id"
    t.decimal "hours"
    t.index ["essn_id"], name: "index_works_ons_on_essn_id"
    t.index ["pno_id"], name: "index_works_ons_on_pno_id"
  end

  add_foreign_key "department_locations", "departments"
  add_foreign_key "departments", "companies"
  add_foreign_key "employees", "departments"
end
