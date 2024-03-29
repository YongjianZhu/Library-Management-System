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

ActiveRecord::Schema.define(version: 2019_09_27_000141) do

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "title"
    t.string "language"
    t.text "published"
    t.integer "edition"
    t.string "subject"
    t.text "summary"
    t.integer "special"
    t.integer "university_id", null: false
    t.integer "library_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["library_id"], name: "index_books_on_library_id"
    t.index ["university_id"], name: "index_books_on_university_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.integer "university_id", null: false
    t.string "location"
    t.integer "max_borrowed_days"
    t.integer "overdue_fines"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["university_id"], name: "index_libraries_on_university_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "books", "libraries"
  add_foreign_key "books", "universities"
  add_foreign_key "libraries", "universities"
end
