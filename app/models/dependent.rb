class Dependent < ApplicationRecord
  validates :dependent_name, presence: true
  validates :sex, presence: true
  validates :birth_date, presence: true
  
  belongs_to :essn, class_name: "Employee"
end