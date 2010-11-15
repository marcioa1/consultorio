class CreateItemTabelas < ActiveRecord::Migration
  def self.up
    create_table :item_tabelas do |t|
      t.string     :nome
      t.references :tabela
      t.decimal    :valor, :precision=>8, :scale=>2

      t.timestamps
    end
  end

  def self.down
    drop_table :item_tabelas
  end
end
