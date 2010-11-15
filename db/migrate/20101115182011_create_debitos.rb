class CreateDebitos < ActiveRecord::Migration
  def self.up
    create_table :debitos do |t|
      t.references :paciente
      t.string     :descricao
      t.decimal    :valor, :precision=>8, :scale=>2
      t.date       :data
      t.references :tratamento
      t.references :orcamento

      t.timestamps
    end
  end

  def self.down
    drop_table :debitos
  end
end
