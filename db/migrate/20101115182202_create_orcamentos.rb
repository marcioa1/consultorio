class CreateOrcamentos < ActiveRecord::Migration
  def self.up
    create_table :orcamentos do |t|
      t.references :paciente
      t.date       :data
      t.date       :vencimento_primeira_parcela
      t.decimal    :valor, :precision=>8, :scale=>2
      t.integer    :numero_parcelas
      t.decimal    :valor_parcela, :precision=>8, :scale=>2

      t.timestamps
    end
  end

  def self.down
    drop_table :orcamentos
  end
end
