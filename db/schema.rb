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

<<<<<<< .merge_file_kJxvOM
ActiveRecord::Schema.define(version: 2019_09_27_074819) do
=======
ActiveRecord::Schema.define(version: 2019_09_27_021801) do
>>>>>>> .merge_file_55WZvp

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

  create_table "students", force: :cascade do |t|
<<<<<<< .merge_file_kJxvOM
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "education_level"
    t.integer "max_book_number"
    t.integer "university_id"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
=======
    t.string "email"
    t.string "name"
    t.string "password"
    t.integer "education"
    t.integer "university_id", null: false
    t.integer "maximum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
>>>>>>> .merge_file_55WZvp
    t.index ["university_id"], name: "index_students_on_university_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

<<<<<<< .merge_file_kJxvOM
=======
  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

>>>>>>> .merge_file_55WZvp
  create_table "wishlists", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_wishlists_on_book_id"
    t.index ["student_id"], name: "index_wishlists_on_student_id"
  end

  add_foreign_key "books", "libraries"
  add_foreign_key "books", "universities"
  add_foreign_key "libraries", "universities"
  add_foreign_key "students", "universities"
  add_foreign_key "wishlists", "books"
  add_foreign_key "wishlists", "students"
end
