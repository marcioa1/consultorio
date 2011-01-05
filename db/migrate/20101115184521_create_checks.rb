class CreateChecks < ActiveRecord::Migration
  def self.up
    create_table :hecks do |t|
      t.references :receipt
      t.decimal    :value, :precision=>8, :decimal=>2
      t.references :bank
      t.string     :number
      t.date       :date_for_deposit
      t.date       :return_date
      t.string     :devolution_reason
      t.date       :ressubmition_date
      t.string     :note

      t.timestamps
    end
  end

  def self.down
    drop_table :hecks
  end
end
