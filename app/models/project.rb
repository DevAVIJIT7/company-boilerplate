class Project < ApplicationRecord
  validates :name, presence: true
  belongs_to :dnum, class_name: "Department"
  has_many :project_work_logs, foreign_key: :pno_id
  has_many :employees, through: :project_work_logs, source: :essn
end