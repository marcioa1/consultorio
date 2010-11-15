class CreateTratamentos < ActiveRecord::Migration
  def self.up
    create_table :tratamentos do |t|
      t.date       :data
      t.references :paciente
      t.string     :descricao
      t.string     :dente
      t.references :item_tabela
      t.decimal    :valor, :precision=>8, :scale=>2
      t.decimal    :custo, :precision=>8, :scale=>2
      t.string     :face
      t.references :orcamento

      t.timestamps
    end
  end

  def self.down
    drop_table :tratamentos
  end
end
