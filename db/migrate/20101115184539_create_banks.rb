class CreateBanks < ActiveRecord::Migration
  def self.up
    create_table :banks do |t|
      t.string  :name
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :banks
  end
end
