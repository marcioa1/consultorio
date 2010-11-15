class CreateTrabalhoProteticos < ActiveRecord::Migration
  def self.up
    create_table :trabalho_proteticos do |t|
      t.references :protetico
      t.references :tratamento
      t.references :item_protetico
      t.decimal    :valor, :precision=>8, :scale=>2
      t.date       :data
      t.date       :entrega_prevista
      t.date       :data_devolucao
      t.date       :data_repeticao
      t.date       :data_prevista_devolucao_repeticao
      t.date       :data_devolucao_repeticao
      t.string     :cor
      t.string     :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :trabalho_proteticos
  end
end
