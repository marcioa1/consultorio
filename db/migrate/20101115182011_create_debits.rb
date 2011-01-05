class CreateDebits < ActiveRecord::Migration
  def self.up
    create_table :debits do |t|
      t.references :patient
      t.string     :description
      t.decimal    :price, :precision=>8, :scale=>2
      t.date       :date
      t.references :treatment
      t.references :budget

      t.timestamps
    end
  end

  def self.down
    drop_table :debits
  end
end
