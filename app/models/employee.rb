class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :sex, presence: true

  belongs_to :department
  has_many :dependents, foreign_key: :essn_id
  has_many :subordinates, class_name: "Employee", foreign_key: :super_ssn
  belongs_to :manager, optional: true, class_name: "Employee", foreign_key: :super_ssn
  has_many :project_work_logs, foreign_key: :essn_id
  has_many :projects, through: :project_work_logs, source: :pno
end