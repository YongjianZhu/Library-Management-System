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

ActiveRecord::Schema.define(version: 2019_09_27_041642) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "borrowhistories", force: :cascade do |t|
    t.integer "library_id", null: false
    t.integer "university_id", null: false
    t.integer "student_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_borrowhistories_on_book_id"
    t.index ["library_id"], name: "index_borrowhistories_on_library_id"
    t.index ["student_id"], name: "index_borrowhistories_on_student_id"
    t.index ["university_id"], name: "index_borrowhistories_on_university_id"
  end

  create_table "holdlists", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "university_id", null: false
    t.integer "book_id", null: false
    t.integer "library_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_holdlists_on_book_id"
    t.index ["library_id"], name: "index_holdlists_on_library_id"
    t.index ["student_id"], name: "index_holdlists_on_student_id"
    t.index ["university_id"], name: "index_holdlists_on_university_id"
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

  create_table "librarybooklists", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "number"
    t.integer "library_id", null: false
    t.integer "university_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_librarybooklists_on_book_id"
    t.index ["library_id"], name: "index_librarybooklists_on_library_id"
    t.index ["university_id"], name: "index_librarybooklists_on_university_id"
  end

  create_table "studentborrowlists", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "book_id", null: false
    t.text "duedate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_studentborrowlists_on_book_id"
    t.index ["student_id"], name: "index_studentborrowlists_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.string "password"
    t.integer "education"
    t.integer "university_id", null: false
    t.integer "maximum"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["university_id"], name: "index_students_on_university_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wishlists", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_wishlists_on_book_id"
    t.index ["student_id"], name: "index_wishlists_on_student_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "books", "libraries"
  add_foreign_key "books", "universities"
  add_foreign_key "borrowhistories", "books"
  add_foreign_key "borrowhistories", "libraries"
  add_foreign_key "borrowhistories", "students"
  add_foreign_key "borrowhistories", "universities"
  add_foreign_key "holdlists", "books"
  add_foreign_key "holdlists", "libraries"
  add_foreign_key "holdlists", "students"
  add_foreign_key "holdlists", "universities"
  add_foreign_key "libraries", "universities"
  add_foreign_key "librarybooklists", "books"
  add_foreign_key "librarybooklists", "libraries"
  add_foreign_key "librarybooklists", "universities"
  add_foreign_key "studentborrowlists", "books"
  add_foreign_key "studentborrowlists", "students"
  add_foreign_key "students", "universities"
  add_foreign_key "wishlists", "books"
  add_foreign_key "wishlists", "students"
end
