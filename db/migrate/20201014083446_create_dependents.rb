class CreateDependents < ActiveRecord::Migration[6.0]
  def change
    create_table :dependents do |t|
      t.references :essn
      t.string :dependent_name
      t.string :sex
      t.date :birth_date
      t.string :relationship

      t.timestamps
    end
  end
end
