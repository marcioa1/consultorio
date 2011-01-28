class CreateTablePrices < ActiveRecord::Migration
  def self.up
    create_table :table_prices do |t|
      t.string      :name
      t.references  :owner
      t.timestamps
    end
  end

  def self.down
    drop_table :table_prices
  end
end
