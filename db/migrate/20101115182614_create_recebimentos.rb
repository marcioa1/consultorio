class CreateRecebimentos < ActiveRecord::Migration
  def self.up
    create_table :recebimentos do |t|
      t.date       :data
      t.decimal    :valor, :precision=>8, :scale=>2
      t.references :paciente
      t.references :forma_recebimento
      t.references :cheque

      t.timestamps
    end
  end

  def self.down
    drop_table :recebimentos
  end
end
