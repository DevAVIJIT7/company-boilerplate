class Department < ApplicationRecord
  validates :name, presence: true
  belongs_to :company
  belongs_to :manager_ssn, optional: true, class_name: "Employee"
  has_many :employees, dependent: :destroy
  has_many :department_locations, dependent: :destroy
  has_many :projects, foreign_key: :dnum_id, dependent: :destroy
end