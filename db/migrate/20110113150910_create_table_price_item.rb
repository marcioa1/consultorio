class CreateTablePriceItem < ActiveRecord::Migration
  def self.up
    create_table :table_price_items do |t|
      t.string     :code
      t.string     :name
      t.references :table_price
      t.decimal    :price, :precision => 8, :scale => 2
      t.boolean    :active, :default => true
      t.timestamps
    end
  end
    
  def self.down
    drop_table :table_price_items
  end
end