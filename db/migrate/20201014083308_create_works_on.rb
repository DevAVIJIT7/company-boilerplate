class CreateWorksOn < ActiveRecord::Migration[6.0]
  def change
    create_table :works_ons do |t|
      t.references :essn
      t.references :pno
      t.decimal :hours
    end
  end
end
