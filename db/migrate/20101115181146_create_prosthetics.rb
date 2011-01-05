class CreateProsthetics < ActiveRecord::Migration
  def self.up
    create_table :prosthetics do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :prosthetics
  end
end
