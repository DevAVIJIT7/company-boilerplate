class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :birth_date
      t.text :address
      t.string :sex
      t.decimal :salary
      t.integer :super_ssn
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
