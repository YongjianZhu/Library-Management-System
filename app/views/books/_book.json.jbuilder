json.extract! book, :id, :isbn, :title, :language, :published, :edition, :subject, :summary, :special, :university_id, :library_id, :created_at, :updated_at
json.url book_url(book, format: :json)
