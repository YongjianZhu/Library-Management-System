json.extract! borrowhistory, :id, :library_id, :university_id, :student_id, :book_id, :created_at, :updated_at
json.url borrowhistory_url(borrowhistory, format: :json)
