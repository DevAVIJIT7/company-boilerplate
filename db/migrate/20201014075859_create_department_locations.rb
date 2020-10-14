class CreateDepartmentLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :department_locations do |t|
      t.references :department, foreign_key: true
      t.string :location
    end
  end
end
