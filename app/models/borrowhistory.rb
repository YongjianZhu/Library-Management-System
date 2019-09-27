class Borrowhistory < ApplicationRecord
  belongs_to :library
  belongs_to :university
  belongs_to :student
  belongs_to :book
end
