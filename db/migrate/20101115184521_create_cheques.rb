class CreateCheques < ActiveRecord::Migration
  def self.up
    create_table :cheques do |t|
      t.references :recebimento
      t.decimal :valor
      t.references :banco
      t.string :numero
      t.date :bom_para
      t.date :data_devolucao
      t.string :motivo_devolucao
      t.date :data_reapresentacao
      t.string :observacao

      t.timestamps
    end
  end

  def self.down
    drop_table :cheques
  end
end
