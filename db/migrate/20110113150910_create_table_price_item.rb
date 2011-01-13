class CreateTablePriceItem < ActiveRecord::Migration
  def self.up
    create_table table_price_items do |t|
      t.string     :name
      t.references :table_price
      t.decimal    :price, :precision=>8, :scale=>2  end
      t.boolean    :active, :default => true
      t.timestamps
    end
    
  def self.down
    drop_table table_price_items
  end
end
