class ProjectWorkLog < ApplicationRecord
  self.table_name = "works_ons"

  belongs_to :pno, class_name: "Project"
  belongs_to :essn, class_name: "Employee"
end