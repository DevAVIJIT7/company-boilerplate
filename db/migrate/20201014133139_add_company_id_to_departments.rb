class AddCompanyIdToDepartments < ActiveRecord::Migration[6.0]
  def change
    add_reference :departments, :company, foreign_key: true, index: true
  end
end
