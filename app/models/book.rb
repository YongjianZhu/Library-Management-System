class Book < ApplicationRecord
  has_one_attached :image
  belongs_to :university
  belongs_to :library
end
