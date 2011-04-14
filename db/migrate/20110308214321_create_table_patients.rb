class CreateTablePatients < ActiveRecord::Migration
  def self.up
      create_table :patients do |t|
      t.string     :name
      t.references :table_price
      t.date       :begin_treatment
      t.timestamps
    end
  end

  def self.down
    drop_table :patients
  end
end
