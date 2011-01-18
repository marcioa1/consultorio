class AddOwnerToFormOfReceipt < ActiveRecord::Migration
  def self.up
    add_column :form_of_receipts, :owner_id, :integer
  end

  def self.down
    remove_column :form_of_receipts, :owner_id
  end
end