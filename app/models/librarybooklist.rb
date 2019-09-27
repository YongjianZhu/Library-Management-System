class Librarybooklist < ApplicationRecord
  belongs_to :book
  belongs_to :library
  belongs_to :university
end
