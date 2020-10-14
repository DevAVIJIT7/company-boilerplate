class CreateDepartments < ActiveRecord::Migration[6.0]
  def change
    create_table :departments do |t|
      t.string :name
      t.integer :manager_ssn
      t.date :mgr_start_date

      t.timestamps
    end
  end
end
