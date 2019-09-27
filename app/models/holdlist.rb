class Holdlist < ApplicationRecord
  belongs_to :student
  belongs_to :university
  belongs_to :book
  belongs_to :library
end
