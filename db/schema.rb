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

ActiveRecord::Schema.define(version: 2020_10_13_085938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boxer_pallet_companions", force: :cascade do |t|
    t.string "destination"
    t.string "location"
    t.integer "category_id"
    t.integer "boxer_pallet_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grading_pallet_companions", force: :cascade do |t|
    t.string "value"
    t.integer "category_id"
    t.integer "grading_pallet_id"
  end

  create_table "pallet_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pallets", force: :cascade do |t|
    t.string "label"
    t.datetime "deleted_at"
    t.integer "pallet_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["label"], name: "index_pallets_on_label"
  end

end
