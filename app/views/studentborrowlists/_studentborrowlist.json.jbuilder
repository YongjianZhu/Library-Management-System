json.extract! studentborrowlist, :id, :student_id, :book_id, :duedate, :created_at, :updated_at
json.url studentborrowlist_url(studentborrowlist, format: :json)
