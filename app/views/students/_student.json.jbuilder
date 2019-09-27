json.extract! student, :id, :email, :name, :password, :education, :university_id, :maximum, :created_at, :updated_at
json.url student_url(student, format: :json)
