class CreateBudgets < ActiveRecord::Migration
  def self.up
    create_table :budgets do |t|
      t.references :patient
      t.date       :date
      t.date       :first_parcel_expiration
      t.decimal    :price, :precision=>8, :scale=>2
      t.integer    :number_of_parcels
      t.decimal    :parcel_value, :precision=>8, :scale=>2

      t.timestamps
    end
  end

  def self.down
    drop_table :budgets
  end
end
