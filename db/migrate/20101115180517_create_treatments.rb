class CreateTreatments < ActiveRecord::Migration
  def self.up
    create_table :treatments do |t|
      t.date       :date
      t.references :patient
      t.string     :description
      t.string     :tooth
      t.references :ite_proce_table
      t.decimal    :price, :precision=>8, :scale=>2
      t.decimal    :cost, :precision=>8, :scale=>2
      t.string     :face
      t.references :budget

      t.timestamps
    end
  end

  def self.down
    drop_table :treatments
  end
end
