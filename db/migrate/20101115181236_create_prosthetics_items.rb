class CreateProstheticsItems < ActiveRecord::Migration
  def self.up
    create_table :prosthetic_items do |t|
      t.references :prosthetic
      t.decimal    :price, :precision=>8, :scale=>2
      t.string     :description

      t.timestamps
    end
  end

  def self.down
    drop_table :prosthetic_items
  end
end
