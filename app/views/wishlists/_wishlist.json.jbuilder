json.extract! wishlist, :id, :student_id, :book_id, :created_at, :updated_at
json.url wishlist_url(wishlist, format: :json)
