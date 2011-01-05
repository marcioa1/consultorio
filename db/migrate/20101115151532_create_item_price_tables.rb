class CreateItemPriceTables < ActiveRecord::Migration
  def self.up
    create_table :table_items do |t|
      t.string     :name
      t.references :table_price
      t.decimal    :price, :precision=>8, :scale=>2

      t.timestamps
    end
  end

  def self.down
    drop_table :table_items
  end
end
