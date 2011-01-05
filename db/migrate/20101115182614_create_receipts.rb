class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.date       :date
      t.decimal    :value, :precision=>8, :scale=>2
      t.references :patient
      t.references :form_of_receipt
      t.references :check

      t.timestamps
    end
  end

  def self.down
    drop_table :receipts
  end
end
