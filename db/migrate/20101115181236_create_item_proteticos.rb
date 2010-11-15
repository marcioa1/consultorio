class CreateItemProteticos < ActiveRecord::Migration
  def self.up
    create_table :item_proteticos do |t|
      t.references :protetico
      t.decimal    :valor, :precision=>8, :scale=>2
      t.string     :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :item_proteticos
  end
end
