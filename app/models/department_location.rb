class DepartmentLocation < ApplicationRecord
  validates :location, presence: true
  belongs_to :department
end